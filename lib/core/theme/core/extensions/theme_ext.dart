import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  ThemeData get theme {
    return Theme.of(this);
  }

  ColorScheme get colorScheme {
    return theme.colorScheme;
  }

  TextTheme get textTheme {
    return theme.textTheme;
  }

  bool get isDark {
    return theme.brightness == .dark;
  }

  bool get isLight {
    return theme.brightness == .light;
  }
}
