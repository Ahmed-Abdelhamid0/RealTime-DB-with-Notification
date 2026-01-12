import 'package:device_info_plus/device_info_plus.dart';
import 'package:platform/platform.dart';
import 'package:realtime_ex/app_base/core/device/device_constants.dart';
import 'package:realtime_ex/app_base/core/flavors/environment_utils.dart';
import 'package:realtime_ex/app_base/core/local/local_storage/scb_local_storage.dart';
import 'package:realtime_ex/app_base/core/utils/string_util.dart';


class DeviceIdManager {
  const DeviceIdManager(this._deviceIdStorage, this._deviceInfo, [this._platform = const LocalPlatform()]);

  final ScbLocalStorage _deviceIdStorage;
  final DeviceInfoPlugin _deviceInfo;
  final Platform _platform;

  Future<String> getDeviceId() async {
    if (_platform.isIOS) {
      return _generatePersistentIdForIos();
    } else if (_platform.isAndroid) {
      return _generatePersistentIdForAndroid();
    }

    throw UnsupportedError(DeviceConstants.unsupportedPlatformError);
  }

  Future<String> _generatePersistentIdForAndroid() async {
    try {
      // Try to get existing ID from dedicated storage
      final deviceId = await _deviceIdStorage.get<String>(DeviceConstants.deviceIdKey);

      if (deviceId != null && deviceId.isNotEmpty) {
        return deviceId;
      }

      // Generate new random ID
      final newDeviceId = StringUtil.generateRandomId(15);

      // Save to dedicated storage
      await _deviceIdStorage.save(DeviceConstants.deviceIdKey, newDeviceId);

      return newDeviceId;
    } catch (e) {
      return StringUtil.generateRandomId(15);
    }
  }

  Future<String> _generatePersistentIdForIos() async {
    final iosInfo = await _deviceInfo.iosInfo;
    final id = iosInfo.identifierForVendor ?? '';

    return _formatToAlphanumeric(id);
  }

  String _formatToAlphanumeric(String input) {
    var alphanumericId = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');

    if (alphanumericId.length < 15) {
      final padding = Environment.deviceIdPadding;
      while (alphanumericId.length < 15) {
        alphanumericId += padding[alphanumericId.length % padding.length];
      }
    }
    return alphanumericId.substring(0, 15).toUpperCase();
  }
}
