import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:realtime_ex/app_base/core/flavors/environment_utils.dart';
import 'package:realtime_ex/app_base/core/mixins/app_logger.dart';
import 'package:firebase_performance/firebase_performance.dart';


/// Dio interceptor that automatically tracks all HTTP requests with Firebase Performance
class FirebasePerformanceInterceptor extends Interceptor with AppSafeLogger {
  FirebasePerformanceInterceptor(this._firebasePerformance);
  final FirebasePerformance _firebasePerformance;
  final Map<RequestOptions, HttpMetric> _requestMetrics = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (!Environment.isFirebasePerformanceEnabled) {
      handler.next(options);
      return;
    }

    try {
      final url = _buildFullUrl(options);
      final httpMethod = _getHttpMethod(options.method);

      final httpMetric = _firebasePerformance.newHttpMetric(url, httpMethod);

      // Set request payload size if data exists
      if (options.data != null) {
        final requestSize = _calculateDataSize(options.data);
        httpMetric.requestPayloadSize = requestSize;
      }

      // Add custom attributes
      httpMetric.putAttribute('endpoint', options.path);
      httpMetric.putAttribute('method', options.method.toUpperCase());
      if (options.queryParameters.isNotEmpty) {
        httpMetric.putAttribute('has_query_params', 'true');
      }

      await httpMetric.start();
      _requestMetrics[options] = httpMetric;

      safeLogInfo('Started tracking API: ${options.method.toUpperCase()} ${options.path}');
    } catch (e) {
      safeLogError('Failed to start HTTP metric tracking: $e');
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (!Environment.isFirebasePerformanceEnabled) {
      handler.next(response);
      return;
    }

    try {
      final httpMetric = _requestMetrics.remove(response.requestOptions);
      if (httpMetric != null) {
        await _completeSuccessfulRequest(httpMetric, response);
      }
    } catch (e) {
      safeLogError('Failed to complete HTTP metric tracking: $e');
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!Environment.isFirebasePerformanceEnabled) {
      handler.next(err);
      return;
    }

    try {
      final httpMetric = _requestMetrics.remove(err.requestOptions);
      if (httpMetric != null) {
        await _completeFailedRequest(httpMetric, err);
      }
    } catch (e) {
      safeLogError('Failed to complete failed HTTP metric tracking: $e');
    }

    handler.next(err);
  }

  /// Complete tracking for successful requests
  Future<void> _completeSuccessfulRequest(HttpMetric httpMetric, Response response) async {
    try {
      // Set response details
      httpMetric.httpResponseCode = response.statusCode ?? 200;

      // Set response payload size
      if (response.data != null) {
        final responseSize = _calculateDataSize(response.data);
        httpMetric.responsePayloadSize = responseSize;
      }

      // Set content type
      final contentType = response.headers.value('content-type');
      if (contentType != null) {
        httpMetric.responseContentType = contentType;
      }

      // Add success attributes
      httpMetric.putAttribute('status', 'success');
      httpMetric.putAttribute('status_code', '${response.statusCode}');

      // Track response time category
      httpMetric.putAttribute('performance_category', _getPerformanceCategory(response));

      await httpMetric.stop();

      safeLogInfo(
        'Completed API tracking: ${response.requestOptions.method.toUpperCase()} ${response.requestOptions.path} - Status: ${response.statusCode}',
      );
    } catch (e) {
      safeLogError('Failed to complete successful request metrics: $e');
    }
  }

  /// Complete tracking for failed requests
  Future<void> _completeFailedRequest(HttpMetric httpMetric, DioException error) async {
    try {
      // Set error response details
      if (error.response != null) {
        httpMetric.httpResponseCode = error.response!.statusCode ?? 0;

        if (error.response!.data != null) {
          final responseSize = _calculateDataSize(error.response!.data);
          httpMetric.responsePayloadSize = responseSize;
        }
      } else {
        // Network error or timeout
        httpMetric.httpResponseCode = _getErrorCode(error.type);
      }

      // Add error attributes
      httpMetric.putAttribute('status', 'error');
      httpMetric.putAttribute('error_type', error.type.name);
      httpMetric.putAttribute('status_code', '${httpMetric.httpResponseCode}');

      // Add specific error details
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          httpMetric.putAttribute('error_detail', 'connection_timeout');
          break;
        case DioExceptionType.sendTimeout:
          httpMetric.putAttribute('error_detail', 'send_timeout');
          break;
        case DioExceptionType.receiveTimeout:
          httpMetric.putAttribute('error_detail', 'receive_timeout');
          break;
        case DioExceptionType.badResponse:
          httpMetric.putAttribute('error_detail', 'bad_response');
          break;
        case DioExceptionType.cancel:
          httpMetric.putAttribute('error_detail', 'cancelled');
          break;
        case DioExceptionType.connectionError:
          httpMetric.putAttribute('error_detail', 'connection_error');
          break;
        case DioExceptionType.badCertificate:
          httpMetric.putAttribute('error_detail', 'bad_certificate');
          break;
        case DioExceptionType.unknown:
          httpMetric.putAttribute('error_detail', 'unknown');
          break;
      }

      await httpMetric.stop();

      safeLogInfo(
          'Completed failed API tracking: ${error.requestOptions.method.toUpperCase()} ${error.requestOptions.path} - Error: ${error.type.name}');
    } catch (e) {
      safeLogError('Failed to complete failed request metrics: $e');
    }
  }

  /// Build full URL from request options
  String _buildFullUrl(RequestOptions options) {
    var url = options.baseUrl + options.path;
    if (url.length > 100) {
      // Firebase Performance has URL length limits
      url = url.substring(0, 100);
    }
    return url;
  }

  /// Convert string method to HttpMethod enum
  HttpMethod _getHttpMethod(String method) => switch (method.toUpperCase()) {
        'GET' => HttpMethod.Get,
        'POST' => HttpMethod.Post,
        'PUT' => HttpMethod.Put,
        'DELETE' => HttpMethod.Delete,
        'PATCH' => HttpMethod.Patch,
        'HEAD' => HttpMethod.Head,
        'OPTIONS' => HttpMethod.Options,
        _ => HttpMethod.Get,
      };

  /// Calculate approximate data size in bytes
  int _calculateDataSize(dynamic data) {
    try {
      if (data == null) {
        return 0;
      }

      if (data is String) {
        return data.length;
      } else if (data is Map || data is List) {
        return jsonEncode(data).length;
      } else if (data is FormData) {
        // Estimate FormData size
        return data.fields.length * 50 + data.files.length * 1024;
      }

      return data.toString().length;
    } catch (e) {
      return 0;
    }
  }

  /// Get performance category based on response time
  String _getPerformanceCategory(Response response) {
    // This is a rough estimate - you might want to track actual timing
    final statusCode = response.statusCode ?? 0;

    if (statusCode >= 200 && statusCode < 300) {
      return 'fast'; // Could be enhanced with actual timing
    } else if (statusCode >= 300 && statusCode < 400) {
      return 'redirect';
    } else if (statusCode >= 400 && statusCode < 500) {
      return 'client_error';
    } else if (statusCode >= 500) {
      return 'server_error';
    }

    return 'unknown';
  }

  /// Get error code for different error types
  int _getErrorCode(DioExceptionType errorType) {
    switch (errorType) {
      case DioExceptionType.connectionTimeout:
        return 408; // Request Timeout
      case DioExceptionType.sendTimeout:
        return 408; // Request Timeout
      case DioExceptionType.receiveTimeout:
        return 504; // Gateway Timeout
      case DioExceptionType.cancel:
        return 499; // Client Closed Request
      case DioExceptionType.connectionError:
        return 503; // Service Unavailable
      case DioExceptionType.badCertificate:
        return 495; // SSL Certificate Error
      default:
        return 500; // Internal Server Error
    }
  }

  /// Clean up any remaining metrics (call this when disposing)
  Future<void> cleanup() async {
    try {
      for (final metric in _requestMetrics.values) {
        await metric.stop();
      }
      _requestMetrics.clear();
      safeLogInfo('Cleaned up Firebase Performance Interceptor');
    } catch (e) {
      safeLogError('Failed to cleanup Firebase Performance Interceptor: $e');
    }
  }

  /// Get current active metrics count
  int get activeMetricsCount => _requestMetrics.length;
}
