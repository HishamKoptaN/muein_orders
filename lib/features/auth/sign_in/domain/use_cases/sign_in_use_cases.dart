import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../repo/sign_in_repo.dart';

@lazySingleton
class SignInUseCases {
  final SignInRepo _repository;
  SignInUseCases(this._repository);
  Future<ExecuteGuard<void>> signIn({
    required String email,
    required String password,
  }) async {
    return await _repository.signIn(email: email, password: password).then((
      result,
    ) async {
      return await result.when(
        success: (_) async {
          return const .success(data: null);
        },
        failure: (errorInfo) {
          return .failure(errorInfo: errorInfo);
        },
      );
    });
  }
}
