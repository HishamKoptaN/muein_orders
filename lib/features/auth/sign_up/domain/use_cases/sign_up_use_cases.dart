import 'dart:async';
import 'package:injectable/injectable.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
import '../entities/signup_req_entity.dart';
import '../repo/sign_up_repo.dart';

abstract class SignUpUseCases {
  Future<ApiResult<void>> signUp({required SignUpReqEntity signUpReq});
}

@LazySingleton(as: SignUpUseCases)
class SignUpUseCasesImpl implements SignUpUseCases {
  final SignUpRepo repository;

  SignUpUseCasesImpl(this.repository);

  @override
  Future<ApiResult<void>> signUp({required SignUpReqEntity signUpReq}) async {
    final completer = Completer<void>();
    getIt<AuthBloc>().add(AuthEvent.authToken(onComplete: completer));
    await completer.future;
    return await repository.signUp(signUpReq: signUpReq);
  }
}
