import 'dart:convert';
import 'dart:io';

import 'package:biometric_storage/biometric_storage.dart';
import 'package:flutter/services.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/local_json_serializable.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/scb_bio_secure_local_storage.dart';
import 'package:realtime_ex/app_base/core/mixins/app_logger.dart';



class ScbBioSecureLocalStorageBiometricStorageImpl with AppSafeLogger implements ScbBioSecureLocalStorage {
  const ScbBioSecureLocalStorageBiometricStorageImpl(this._storage);

  static final _noAuthOptions = StorageFileInitOptions(authenticationRequired: false);
  static final _authOptions = StorageFileInitOptions(authenticationValidityDurationSeconds: Platform.isIOS ? 0 : -1);

  final BiometricStorage _storage;

  @override
  Future<void> delete(String key) async {
    final file = await _storage.getStorage(key, options: _noAuthOptions);
    await file.delete();
    safeLogInfo('BiometricStorageImpl: File with  $key deleted');
  }

  @override
  Future<void> deleteAll(List<String> keys) async {
    for (final key in keys) {
      await delete(key);
    }
  }

  @override
  Future<T?> retrieveSecurely<T>(String key, {T Function(Map<String, dynamic> p1)? fromJson}) async {
    await _ensureCanAuthenticate();

    try {
      final file = await _storage.getStorage(key, options: _authOptions);
      final value = await file.read();

      safeLogInfo('BiometricStorageImpl: File securely retrieved from $key with content: $value');

      return _parseValue(value, fromJson: fromJson);
    } on PlatformException catch (e) {
      // Handle BadPaddingException - delete corrupted data and return null
      if (e.message?.contains('BadPaddingException') == true ||
          e.message?.contains('BAD_DECRYPT') == true ||
          e.code == 'Exception encountered') {
        safeLogError('BiometricStorageImpl: Corrupted data detected for key $key, deleting...');
        await delete(key);
        return null;
      } else {
        safeLogError('BiometricStorageImpl: Failed to securely retrieve from $key storage: $e');
        rethrow;
      }
    } catch (e) {
      safeLogError('BiometricStorageImpl: Failed to securely retrieve from $key storage: $e');
      rethrow;
    }
  }

  @override
  Future<void> saveSecurely<T>(String key, T value) async {
    await _ensureCanAuthenticate();

    try {
      final valueToStore = await _prepareValue(value);

      final file = await _storage.getStorage(key, options: _authOptions);
      await file.write(valueToStore);

      safeLogInfo('BiometricStorageImpl: File with content $value securely saved to $key');
    } on PlatformException catch (e) {
      // Handle BadPaddingException - delete corrupted data and retry
      if (e.message?.contains('BadPaddingException') == true || e.message?.contains('BAD_DECRYPT') == true) {
        safeLogError('BiometricStorageImpl: Corrupted data detected for key $key, clearing and retrying...');
        await delete(key);
        // Retry the save operation
        final valueToStore = await _prepareValue(value);
        final file = await _storage.getStorage(key, options: _authOptions);
        await file.write(valueToStore);
        safeLogInfo('BiometricStorageImpl: File with content $value securely saved to $key after clearing corruption');
      } else {
        safeLogError('BiometricStorageImpl: Failed to securely save to $key storage: $e');
        rethrow;
      }
    }
  }

  Future<String> _prepareValue<T>(T value) async {
    if (value is String || value is int || value is double || value is bool) {
      return value.toString();
    } else if (value is JsonSerializable) {
      return jsonEncode(value.toJson());
    } else {
      throw ArgumentError('Unsupported type');
    }
  }

  Future<T?> _parseValue<T>(String? value, {T Function(Map<String, dynamic> p1)? fromJson}) async {
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
  }

  Future<void> _ensureCanAuthenticate() async {
    final canAuthenticate = await _storage.canAuthenticate();
    if (canAuthenticate != CanAuthenticateResponse.success) {
      final exception = Exception('Biometric authentication is not available on this device.');
      safeLogError('BiometricStorageImpl: _ensureCanAuthenticate() -> $exception');
      throw exception;
    }
  }
}
