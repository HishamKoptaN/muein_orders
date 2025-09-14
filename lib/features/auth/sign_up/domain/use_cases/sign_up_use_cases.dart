import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../entities/signup_req_entity.dart';
import '../entities/sign_up_res_entity.dart';
import '../repo/sign_up_repo.dart';
/// واجهة الـ UseCases
abstract class SignUpUseCases {
  Future<ApiResult<SignUpResEntity>> signUp({
    required SignUpReqEntity signUpReq,
  });
}

/// تنفيذ الـ UseCases
@LazySingleton(as: SignUpUseCases)
class SignUpUseCasesImpl implements SignUpUseCases {
  final SignUpRepo repository;

  SignUpUseCasesImpl(this.repository);

  @override
  Future<ApiResult<SignUpResEntity>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    return await repository.signUp(signUpReq: signUpReq);
  }
}
