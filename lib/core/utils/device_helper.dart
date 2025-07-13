import 'package:flutter/widgets.dart';

enum DeviceType { mobile, tablet, desktop }

class DeviceHelper {
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width >= 1024) {
      return DeviceType.desktop;
    } else if (width >= 600) {
      return DeviceType.tablet;
    } else {
      return DeviceType.mobile;
    }
  }

  static double getResponsiveWidth(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.desktop:
        return 500;
      case DeviceType.tablet:
        return 400;
      case DeviceType.mobile:
      default:
        return 300;
    }
  }

  static double getResponsiveHeight(BuildContext context) {
    switch (getDeviceType(context)) {
      case DeviceType.desktop:
        return 60;
      case DeviceType.tablet:
        return 55;
      case DeviceType.mobile:
      default:
        return 50;
    }
  }
}
