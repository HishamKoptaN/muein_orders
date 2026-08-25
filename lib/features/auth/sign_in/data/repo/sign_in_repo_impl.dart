import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/errors/handlers/api_error_handler/error_handler.dart';
import '../../../../../core/models/user_data.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../auth/data/datasources/auth_api.dart';
import '../../domain/repo/sign_in_repo.dart';
import '../datasources/sign_in_api.dart';

@LazySingleton(as: SignInRepo)
class SignInRepoImpl implements SignInRepo {
  final FirebaseAuth _auth;
  final SignInApi signInApi;
  final AuthApi authApi;
  @factoryMethod
  SignInRepoImpl(this._auth, this.signInApi, this.authApi);
  @override
  Future<ApiResult<UserData>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((userCredential) async {
            if (userCredential.user != null) {
              return const ApiResult.success(data: null);
            } else {
              return const ApiResult.failure(
                errorInfo: ErrorInfo(
                  title: 'فشل',
                  message: 'فشل في تسجيل الدخول',
                ),
              );
            }
          });
      return const ApiResult.success(data: null);
    } on FirebaseAuthException catch (error, st) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: error));
    } catch (error, st) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
