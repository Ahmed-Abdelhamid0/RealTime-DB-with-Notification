// ignore_for_file: avoid_dynamic
import 'package:flutter/foundation.dart';
import 'package:realtime_ex/app_base/core/flavors/environment_utils.dart';
import 'package:realtime_ex/app_base/core/mixins/app_logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';


/// Service class to handle Firebase Crashlytics monitoring across the app
class FirebaseCrashlyticsManager with AppSafeLogger {
  const FirebaseCrashlyticsManager(this._firebaseCrashlytics);
  final FirebaseCrashlytics _firebaseCrashlytics;

  /// Initialize Firebase Crashlytics
  Future<void> initialize() async {
    try {
      if (Environment.isCrashlyticsEnabled) {
        await _firebaseCrashlytics.setCrashlyticsCollectionEnabled(true);

        // Pass all uncaught "fatal" errors from the framework to Crashlytics
        FlutterError.onError = _firebaseCrashlytics.recordFlutterFatalError;

        // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
        PlatformDispatcher.instance.onError = (error, stack) {
          _firebaseCrashlytics.recordError(error, stack, fatal: true);

          return true;
        };

        safeLogInfo('Firebase Crashlytics initialized successfully');
      } else {
        await _firebaseCrashlytics.setCrashlyticsCollectionEnabled(false);
        safeLogInfo('Firebase Crashlytics disabled for current environment');
      }
    } catch (e) {
      safeLogError('Failed to initialize Firebase Crashlytics: $e');
    }
  }

  /// Log a non-fatal error to Crashlytics
  Future<void> recordError(
    dynamic exception,
    StackTrace? stackTrace, {
    String? reason,
    bool fatal = false,
    Map<String, String>? customData,
  }) async {
    try {
      if (!Environment.isCrashlyticsEnabled) {
        return;
      }

      // Add custom data if provided
      if (customData != null) {
        for (final entry in customData.entries) {
          await setCustomKey(entry.key, entry.value);
        }
      }

      await _firebaseCrashlytics.recordError(
        exception,
        stackTrace,
        reason: reason,
        fatal: fatal,
      );

      safeLogInfo('Recorded error to Crashlytics: $exception');
    } catch (e) {
      safeLogError('Failed to record error to Crashlytics: $e');
    }
  }

  /// Log a message to Crashlytics
  Future<void> log(String message) async {
    try {
      if (!Environment.isCrashlyticsEnabled) {
        return;
      }

      await _firebaseCrashlytics.log(message);
      safeLogInfo('Logged message to Crashlytics: $message');
    } catch (e) {
      safeLogError('Failed to log message to Crashlytics: $e');
    }
  }

  /// Set custom key-value data for Crashlytics
  Future<void> setCustomKey(String key, String value) async {
    try {
      if (!Environment.isCrashlyticsEnabled) {
        return;
      }

      await _firebaseCrashlytics.setCustomKey(key, value);
      safeLogInfo('Set custom key for Crashlytics: $key = $value');
    } catch (e) {
      safeLogError('Failed to set custom key for Crashlytics: $e');
    }
  }

  /// Set user identifier for Crashlytics
  Future<void> setUserIdentifier(String identifier) async {
    try {
      if (!Environment.isCrashlyticsEnabled) {
        return;
      }

      await _firebaseCrashlytics.setUserIdentifier(identifier);
      safeLogInfo('Set user identifier for Crashlytics: $identifier');
    } catch (e) {
      safeLogError('Failed to set user identifier for Crashlytics: $e');
    }
  }

  /// Force a crash for testing purposes (use only in development)
  Future<void> forceCrash() async {
    try {
      if (!Environment.isCrashlyticsEnabled) {
        return;
      }

      safeLogInfo('Forcing crash for testing purposes');
      throw Exception('Test crash from FirebaseCrashlyticsManager');
    } catch (e) {
      safeLogError('Force crash initiated: $e');
      rethrow;
    }
  }

  /// Check if Crashlytics is enabled
  bool get isEnabled => Environment.isCrashlyticsEnabled;

  /// Get Crashlytics instance (for advanced usage)
  FirebaseCrashlytics get instance => _firebaseCrashlytics;
}
