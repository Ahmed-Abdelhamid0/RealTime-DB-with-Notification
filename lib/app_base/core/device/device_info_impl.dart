import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:realtime_ex/app_base/core/analytics/analytics.dart';
import 'package:realtime_ex/app_base/core/device/device_info.dart';     



class AppDeviceInfoImpl implements AppDeviceInfo {
  @override
  late final String osDetails;
  @override
  late final String appDetails;
  @override
  late final String deviceIp;
  @override
  late final Map<String, dynamic> deviceAnalyticsParams;

  Future<void> init() async {
    await Future.wait([getOsDetail(), getAppDetail(), getDeviceIp(), getDeviceAnalyticsParams()]);
  }

  Future<void> getOsDetail() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;

      osDetails = 'Android ${androidInfo.version.release} (SDK ${androidInfo.version.sdkInt})';
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;

      osDetails = 'iOS ${iosInfo.systemVersion}';
    } else {
      osDetails = 'Unknown OS';
    }
  }

  Future<void> getAppDetail() async {
    final packageInfo = await PackageInfo.fromPlatform();

    final appVersion = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    appDetails = '$appVersion (Build $buildNumber)';
  }

  Future<void> getDeviceIp() async {
    final networkInfo = NetworkInfo();

    final wifiIP = await networkInfo.getWifiIP();

    deviceIp = wifiIP ?? 'N/A';
  }

  Future<void> getDeviceAnalyticsParams() async {
    final packageInfo = await PackageInfo.fromPlatform();

    final deviceInfo = DeviceInfoPlugin();
    var deviceId = '';
    var deviceVersion = '';
    var operatingSystem = '';
    var operatingSystemVersion = '';

    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      deviceId = info.id;
      deviceVersion = info.version.sdkInt.toString();
      operatingSystem = AnalyticsParamsValues.operatingSystemAndroid;
      operatingSystemVersion = info.version.release;
    } else if (Platform.isIOS) {
      final info = await deviceInfo.iosInfo;
      deviceId = info.identifierForVendor ?? '';
      deviceVersion = info.systemVersion;
      operatingSystem = AnalyticsParamsValues.operatingSystemIos;
      operatingSystemVersion = info.systemVersion;
    }

    deviceAnalyticsParams = {
      AnalyticsParamsKeys.appVersion: packageInfo.version,
      AnalyticsParamsKeys.deviceId: deviceId,
      AnalyticsParamsKeys.deviceIp: deviceIp,
      AnalyticsParamsKeys.deviceVersion: deviceVersion,
      AnalyticsParamsKeys.operatingSystem: operatingSystem,
      AnalyticsParamsKeys.operatingSystemVersion: operatingSystemVersion,
    };
  }
}
