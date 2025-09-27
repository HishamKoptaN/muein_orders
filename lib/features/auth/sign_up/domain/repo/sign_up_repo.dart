import '../../../../../core/networking/api_result.dart';
import '../entities/sign_up_res_entity.dart';
import '../entities/signup_req_entity.dart';

abstract class SignUpRepo {
  Future<ApiResult<void>> signUp({
    required SignUpReqEntity signUpReq,
  });
}
