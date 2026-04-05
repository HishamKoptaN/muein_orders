import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_platform/universal_platform.dart';

class DeviceService {
  static String getDeviceType() {
    if (kIsWeb) return 'web';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    return 'unknown';
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
