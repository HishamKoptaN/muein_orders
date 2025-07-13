import 'package:firebase_auth/firebase_auth.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/models/user_data.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/fire_sign_in_req_body_model.dart';
import '../models/sign_in_req_body_model.dart';
part 'sign_in_api.g.dart';

class SignInRemDataSrc {
  final FirebaseAuth firebaseAuth;

  SignInRemDataSrc({
    required this.firebaseAuth,
  });
  Future<UserCredential> fireSignIn({
    required FireSignInReqBodyModel fireSignInReqBodyModel,
  }) async {
    try {
      await firebaseAuth.currentUser?.reload();
      return await firebaseAuth.signInWithEmailAndPassword(
        email: fireSignInReqBodyModel.email ?? '',
        password: fireSignInReqBodyModel.password ?? '',
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw ExistedAccountException();
      } else if (e.code == 'wrong-password') {
        throw WrongPasswordException();
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}

@RestApi(
  baseUrl: ApiConstants.apiAuthBaseUrl,
)
abstract class SignInApi {
  factory SignInApi(
    Dio dio, {
    String baseUrl,
  }) = _SignInApi;

  @POST(
    ApiConstants.authToken,
  )
  Future<UserData> authToken({
    @Body() required SignInReqBodyModel signInReqBodyModel,
  });
}
