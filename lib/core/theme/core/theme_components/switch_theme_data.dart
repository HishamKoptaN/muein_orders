import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SwitchThemeData switchThemeData({
  required ColorScheme colorScheme,
}) {
  return SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return colorScheme.secondary;
      }
      return colorScheme.onSurface.withOpacity(0.6);
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return colorScheme.secondary.withOpacity(0.5);
      }
      return colorScheme.onSurface.withOpacity(0.3);
    }),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return colorScheme.secondary.withOpacity(0.8);
      }
      return colorScheme.outline;
    }),
    trackOutlineWidth: WidgetStateProperty.all(1.0),
    overlayColor:
        WidgetStateProperty.all(colorScheme.secondary.withOpacity(0.2)),
    splashRadius: 18.r,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
