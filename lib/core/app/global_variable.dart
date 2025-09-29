import 'package:flutter/material.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();

  // Add other global variables here
  static BuildContext? get currentContext => navState.currentContext;
  static late AuthBloc authBloc;
  // Prevent instantiation
  GlobalVariable._();
}
