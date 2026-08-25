import 'dart:async';
import 'package:injectable/injectable.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
import '../entities/sign_up_req_entity.dart';
import '../repo/sign_up_repo.dart';

@lazySingleton
class SignUpUseCases {
  final SignUpRepo repo;
  SignUpUseCases(this.repo);
  Future<ApiResult<void>> signUp({required SignUpReqEntity signUpReq}) async {
    return await repo.signUp(signUpReq: signUpReq).then((result) async {
      return await result.when(
        success: (_) async {
          final completer = Completer<void>();
          getIt<AuthBloc>().add(AuthEvent.authToken(onComplete: completer));
          await completer.future;
          return const ApiResult<void>.success(data: null);
        },
        failure: (errorInfo) {
          return ApiResult<void>.failure(errorInfo: errorInfo);
        },
      );
    });
  }
}
