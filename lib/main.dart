import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.values.firstWhere((element) {
    return element.name == appFlavor;
  });
  runApp(const App());
}
