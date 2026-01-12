import 'package:get_it/get_it.dart';
import 'package:realtime_ex/app_base/core/flavors/environment_utils.dart';
import 'package:realtime_ex/app_base/core/mixins/app_logger.dart';
import 'package:realtime_ex/app_base/core/performance/firebase_performance_interceptor.dart';
import 'package:firebase_performance/firebase_performance.dart';

/// Service class to handle Firebase Performance monitoring across the app
class FirebasePerformanceManager with AppSafeLogger {
  FirebasePerformanceManager(this._firebasePerformance);
  final FirebasePerformance _firebasePerformance;
  final Map<String, Trace> _activeTraces = {};
  final Map<String, HttpMetric> _activeHttpMetrics = {};

  /// Initialize Firebase Performance monitoring
  Future<void> initialize() async {
    try {
      if (Environment.isFirebasePerformanceEnabled) {
        await _firebasePerformance.setPerformanceCollectionEnabled(true);
        safeLogInfo('Firebase Performance initialized successfully');
      } else {
        await _firebasePerformance.setPerformanceCollectionEnabled(false);
        safeLogInfo('Firebase Performance disabled for non-production environment');
      }
    } catch (e) {
      safeLogError('Failed to initialize Firebase Performance: $e');
    }
  }

  /// Start a custom trace
  Future<void> startTrace(String traceName) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      if (_activeTraces.containsKey(traceName)) {
        safeLogError('Trace $traceName is already active');
        return;
      }

      final trace = _firebasePerformance.newTrace(traceName);
      await trace.start();
      _activeTraces[traceName] = trace;
      safeLogInfo('Started trace: $traceName');
    } catch (e) {
      safeLogError('Failed to start trace $traceName: $e');
    }
  }

  /// Stop a custom trace
  Future<void> stopTrace(String traceName) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final trace = _activeTraces.remove(traceName);
      if (trace != null) {
        await trace.stop();
        safeLogInfo('Stopped trace: $traceName');
      } else {
        safeLogError('Trace $traceName not found in active traces');
      }
    } catch (e) {
      safeLogError('Failed to stop trace $traceName: $e');
    }
  }

  /// Add custom attribute to a trace
  Future<void> setTraceAttribute(String traceName, String key, String value) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final trace = _activeTraces[traceName];
      if (trace != null) {
        trace.setMetric(key, int.tryParse(value) ?? 0);
        safeLogInfo('Set attribute for trace $traceName: $key = $value');
      } else {
        safeLogError('Trace $traceName not found for setting attribute');
      }
    } catch (e) {
      safeLogError('Failed to set attribute for trace $traceName: $e');
    }
  }

  /// Increment a metric in a trace
  Future<void> incrementTraceMetric(String traceName, String metricName, [int value = 1]) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final trace = _activeTraces[traceName];
      if (trace != null) {
        trace.incrementMetric(metricName, value);
        safeLogInfo('Incremented metric $metricName by $value for trace $traceName');
      } else {
        safeLogError('Trace $traceName not found for incrementing metric');
      }
    } catch (e) {
      safeLogError('Failed to increment metric for trace $traceName: $e');
    }
  }

  /// Start HTTP metric monitoring
  Future<void> startHttpMetric(String url, String httpMethod) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final metricKey = '${httpMethod}_${url.hashCode}';
      if (_activeHttpMetrics.containsKey(metricKey)) {
        safeLogError('HTTP metric $metricKey is already active');

        return;
      }

      final httpMetric = _firebasePerformance.newHttpMetric(
        url,
        HttpMethod.values.firstWhere(
          (method) => method.name.toLowerCase() == httpMethod.toLowerCase(),
          orElse: () => HttpMethod.Get,
        ),
      );

      await httpMetric.start();
      _activeHttpMetrics[metricKey] = httpMetric;
      safeLogInfo('Started HTTP metric: $metricKey');
    } catch (e) {
      safeLogError('Failed to start HTTP metric for $url: $e');
    }
  }

  /// Stop HTTP metric monitoring
  Future<void> stopHttpMetric(
    String url,
    String httpMethod, {
    int? httpResponseCode,
    int? requestPayloadSize,
    int? responsePayloadSize,
    String? responseContentType,
  }) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final metricKey = '${httpMethod}_${url.hashCode}';
      final httpMetric = _activeHttpMetrics.remove(metricKey);

      if (httpMetric != null) {
        if (httpResponseCode != null) {
          httpMetric.httpResponseCode = httpResponseCode;
        }
        if (requestPayloadSize != null) {
          httpMetric.requestPayloadSize = requestPayloadSize;
        }
        if (responsePayloadSize != null) {
          httpMetric.responsePayloadSize = responsePayloadSize;
        }
        if (responseContentType != null) {
          httpMetric.responseContentType = responseContentType;
        }

        await httpMetric.stop();
        safeLogInfo('Stopped HTTP metric: $metricKey');
      } else {
        safeLogError('HTTP metric $metricKey not found in active metrics');
      }
    } catch (e) {
      safeLogError('Failed to stop HTTP metric for $url: $e');
    }
  }

  /// Track screen rendering time
  Future<void> trackScreenLoad(String screenName) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final traceName = 'screen_load_$screenName';
      await startTrace(traceName);

      // Set screen name as attribute
      final trace = _activeTraces[traceName];
      if (trace != null) {
        trace.putAttribute('screen_name', screenName);
      }

      // Stop trace after a short delay to capture initial rendering
      Future.delayed(const Duration(milliseconds: 100), () async {
        await stopTrace(traceName);
      });
    } catch (e) {
      safeLogError('Failed to track screen load for $screenName: $e');
    }
  }

  /// Track user action performance
  Future<void> trackUserAction(
    String actionName, {
    String? screenName,
    Map<String, String>? attributes,
  }) async {
    try {
      if (!Environment.isFirebasePerformanceEnabled) {
        return;
      }

      final traceName = 'user_action_$actionName';
      await startTrace(traceName);

      final trace = _activeTraces[traceName];
      if (trace != null) {
        trace.putAttribute('action_name', actionName);
        if (screenName != null) {
          trace.putAttribute('screen_name', screenName);
        }

        // Add custom attributes
        attributes?.forEach((key, value) => trace.putAttribute(key, value));
      }

      // Stop trace after a short delay to capture action completion
      Future.delayed(const Duration(milliseconds: 50), () async {
        await stopTrace(traceName);
      });
    } catch (e) {
      safeLogError('Failed to track user action $actionName: $e');
    }
  }

  /// Clean up all active traces and metrics
  Future<void> cleanup() async {
    try {
      // Stop all active traces
      for (final entry in _activeTraces.entries) {
        await entry.value.stop();
        safeLogInfo('Cleaned up trace: ${entry.key}');
      }
      _activeTraces.clear();

      // Stop all active HTTP metrics
      for (final entry in _activeHttpMetrics.entries) {
        await entry.value.stop();
        safeLogInfo('Cleaned up HTTP metric: ${entry.key}');
      }
      _activeHttpMetrics.clear();

      // Clean up the interceptor if it exists
      try {
        final interceptor = GetIt.instance<FirebasePerformanceInterceptor>();
        await interceptor.cleanup();
      } catch (e) {
        // Interceptor might not be registered, ignore
        safeLogInfo('Firebase Performance Interceptor not found or already cleaned up');
      }
    } catch (e) {
      safeLogError('Failed to cleanup Firebase Performance: $e');
    }
  }

  /// Get current performance monitoring status
  bool get isEnabled => Environment.isFirebasePerformanceEnabled;

  /// Get count of active traces
  int get activeTracesCount => _activeTraces.length;

  /// Get count of active HTTP metrics
  int get activeHttpMetricsCount => _activeHttpMetrics.length;
}
