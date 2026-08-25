import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_platform/universal_platform.dart';
import 'package:device_info_plus/device_info_plus.dart';

import '../../models/device_model.dart';

class DeviceService {
  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  static Future<DeviceModel> getDeviceInfo() async {
    String model = "Unknown";
    String os = "Unknown";
    String deviceId = "Unknown";
    if (kIsWeb) {
      var webInfo = await _deviceInfo.webBrowserInfo;
      model = webInfo.browserName.name;
      os = webInfo.platform ?? "Web";
    } else if (Platform.isAndroid) {
      var androidInfo = await _deviceInfo.androidInfo;
      model = "${androidInfo.brand} ${androidInfo.model}";
      os = "Android ${androidInfo.version.release}";
      deviceId = androidInfo.id;
    } else if (Platform.isIOS) {
      var iosInfo = await _deviceInfo.iosInfo;
      model = iosInfo.utsname.machine;
      os = "${iosInfo.systemName} ${iosInfo.systemVersion}";
      deviceId = iosInfo.identifierForVendor ?? "Unknown";
    }
    return DeviceModel(model: model, os: os, deviceId: deviceId, fcmToken: '');
  }

  static String getPlatformInfo() {
    if (UniversalPlatform.isWindows) return 'Windows';
    if (UniversalPlatform.isMacOS) return 'macOS';
    if (UniversalPlatform.isLinux) return 'Linux';
    if (UniversalPlatform.isAndroid) return 'Android';
    if (UniversalPlatform.isIOS) return 'iOS';
    if (kIsWeb) return 'Web';
    return 'Unknown';
  }

  static bool isDesktopPlatform() {
    return UniversalPlatform.isWindows ||
        UniversalPlatform.isMacOS ||
        UniversalPlatform.isLinux;
  }

  static bool isMobilePlatform() {
    return UniversalPlatform.isAndroid || UniversalPlatform.isIOS;
  }

  static bool isWebPlatform() {
    return kIsWeb;
  }
}
