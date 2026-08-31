import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import '../../../../../core/models/user_data.dart';
import 'package:error_handler/error_handler.dart';
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
  Future<ExecuteGuard<UserData>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((userCredential) async {
            if (userCredential.user != null) {
              return const ExecuteGuard.success(data: null);
            } else {
              return const ExecuteGuard.failure(
                errorInfo: ErrorInfo(
                  title: 'فشل',
                  message: 'فشل في تسجيل الدخول',
                ),
              );
            }
          });
      return const ExecuteGuard.success(data: null);
    } on FirebaseAuthException catch (error, st) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    } catch (error, st) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
