import 'package:flutter/material.dart';

class AppContainerStyles {
  static BoxDecoration defaultContainer({Color? color}) {
    return BoxDecoration(
      color: color,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
