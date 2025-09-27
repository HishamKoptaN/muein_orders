import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../entities/signup_req_entity.dart';
import '../repo/sign_up_repo.dart';

abstract class SignUpUseCases {
  Future<ApiResult<void>> signUp({
    required SignUpReqEntity signUpReq,
  });
}

@LazySingleton(as: SignUpUseCases)
class SignUpUseCasesImpl implements SignUpUseCases {
  final SignUpRepo repository;

  SignUpUseCasesImpl(this.repository);

  @override
  Future<ApiResult<void>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    return await repository.signUp(signUpReq: signUpReq);
  }
}
