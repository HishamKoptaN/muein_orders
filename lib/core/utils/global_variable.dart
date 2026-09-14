import 'package:flutter/material.dart';

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static BuildContext? get currentContext {
    return navState.currentContext;
  }

  GlobalVariable._();
}
