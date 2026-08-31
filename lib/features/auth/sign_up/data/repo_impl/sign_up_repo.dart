import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/di/dependency_injection.dart';
import 'package:error_handler/error_handler.dart';
import '../../../../../core/utils/services/token_service.dart';
import '../../domain/entities/sign_up_req_entity.dart';
import '../../domain/repo/sign_up_repo.dart';
import '../data_sources/sign_up_api.dart';
import '../models/sign_up_req_model.dart';

@LazySingleton(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final SignUpApi _api;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  SignUpRepoImpl(this._api);

  @override
  Future<ExecuteGuard<void>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: signUpReq.email?.value ?? '',
            password: signUpReq.password?.value ?? '',
          )
          .then((res) async {
            await _api
                .signUp(
                  SignUpReqModel(
                    name: signUpReq.name?.value,
                    phone: signUpReq.phone?.value,
                    idToken: await getIt<TokenService>().getIdToken(
                      forceRefresh: true,
                    ),
                  ),
                )
                .then((res) async {
                  return const ExecuteGuard.success(data: null);
                });
          });

      return const ExecuteGuard.success(data: null);
    } catch (e, st) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        st,
        reason: 'FirebaseAuthException during sign up: $e',
      );
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: e));
    }
  }
}
