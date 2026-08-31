import 'dart:async';

import 'package:error_handler/error_handler.dart';


abstract class AuthRepo {
  Future<ExecuteGuard<void>> check();
  Future<ExecuteGuard<void>> checkFirebase();
  Future<ExecuteGuard<void>> authToken();
  Future<ExecuteGuard<void>> signOut();
}
