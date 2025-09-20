import 'package:flutter/material.dart';

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  
  // Add other global variables here
  static BuildContext? get currentContext => navState.currentContext;
  
  // Prevent instantiation
  GlobalVariable._();
}
