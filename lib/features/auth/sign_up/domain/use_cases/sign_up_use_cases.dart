import 'dart:async';
import 'package:injectable/injectable.dart';
import '../../../../../core/di/dependency_injection.dart';
import 'package:error_handler/error_handler.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
import '../entities/sign_up_req_entity.dart';
import '../repo/sign_up_repo.dart';

@lazySingleton
class SignUpUseCases {
  final SignUpRepo repo;
  SignUpUseCases(this.repo);
  Future<ExecuteGuard<void>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    return await repo.signUp(signUpReq: signUpReq).then((result) async {
      return await result.when(
        success: (_) async {
          final completer = Completer<void>();
          getIt<AuthBloc>().add(AuthEvent.authToken(onComplete: completer));
          await completer.future;
          return const ExecuteGuard<void>.success(data: null);
        },
        failure: (errorInfo) {
          return ExecuteGuard<void>.failure(errorInfo: errorInfo);
        },
      );
    });
  }
}
