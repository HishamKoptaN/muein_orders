import 'package:flutter/widgets.dart';
import 'app_breakpoints.dart';

enum DeviceType { mobile, tablet, desktop }

class DeviceInfo {
  static DeviceType type(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= Breakpoints.desktopMin) {
      return DeviceType.desktop;
    }

    if (width >= Breakpoints.tabletMin) {
      return DeviceType.tablet;
    }

    return DeviceType.mobile;
  }

}
bool isLandscape(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.landscape;
}

bool isPortrait(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}
