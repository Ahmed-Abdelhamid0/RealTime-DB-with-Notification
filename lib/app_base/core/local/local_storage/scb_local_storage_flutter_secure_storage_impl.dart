import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:realtime_ex/app_base/core/local/first_run_detector/first_run_detector.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/local_json_serializable.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/scb_local_storage.dart';


class ScbLocalStorageFlutterSecureStorageImpl implements ScbLocalStorage {
  const ScbLocalStorageFlutterSecureStorageImpl(this._storage, this._firstRunDetector);

  final FlutterSecureStorage _storage;
  final FirstRunDetector _firstRunDetector;

  Future<void> init() async {
    if (await _firstRunDetector.isFirstRun()) {
      await _storage.deleteAll();
    }
  }

  @override
  Future<void> save<T>(String key, T value) async {
    try {
      String valueToStore;
      if (value is String || value is int || value is double || value is bool) {
        valueToStore = value.toString();
      } else if (value is JsonSerializable) {
        valueToStore = jsonEncode(value.toJson());
      } else {
        throw ArgumentError('Unsupported type');
      }
      await _storage.write(key: key, value: valueToStore);
    } on PlatformException catch (e) {
      // Handle BadPaddingException - delete corrupted data and retry
      if (e.message?.contains('BadPaddingException') == true || e.message?.contains('BAD_DECRYPT') == true) {
        await _storage.delete(key: key);
        // Retry the save operation
        String valueToStore;
        if (value is String || value is int || value is double || value is bool) {
          valueToStore = value.toString();
        } else if (value is JsonSerializable) {
          valueToStore = jsonEncode(value.toJson());
        } else {
          throw ArgumentError('Unsupported type');
        }
        await _storage.write(key: key, value: valueToStore);
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<T?> get<T>(String key, {T Function(Map<String, dynamic>)? fromJson}) async {
    try {
      final value = await _storage.read(key: key);
      if (value == null) {
        return null;
      }

      try {
        if (T == String) {
          return value as T;
        } else if (T == int) {
          return int.parse(value) as T;
        } else if (T == double) {
          return double.parse(value) as T;
        } else if (T == bool) {
          return (value == 'true') as T;
        } else if (fromJson != null) {
          return fromJson(jsonDecode(value));
        } else {
          throw ArgumentError('Unsupported type or missing fromJson function');
        }
      } on Exception catch (e) {
        throw FormatException('Failed to parse value "$value" to type $T: $e');
      }
    } on PlatformException catch (e) {
      // Handle BadPaddingException - delete corrupted data and return null
      if (e.message?.contains('BadPaddingException') == true ||
          e.message?.contains('BAD_DECRYPT') == true ||
          e.code == 'Exception encountered') {
        await _storage.delete(key: key);
        return null;
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<void> delete(String key) => _storage.delete(key: key);

  @override
  Future<void> clear() => _storage.deleteAll();
}
