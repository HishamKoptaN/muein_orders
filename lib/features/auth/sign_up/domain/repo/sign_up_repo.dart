import 'package:error_handler/error_handler.dart';
import '../entities/sign_up_req_entity.dart';

abstract class SignUpRepo {
  Future<ExecuteGuard<void>> signUp({required SignUpReqEntity signUpReq});
}
