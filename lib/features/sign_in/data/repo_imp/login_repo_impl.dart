import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/models/user_data.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/network_info.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/firebase_failures.dart';
import '../../domain/repo/sign_in_repo.dart';
import '../data_sources/sign_in_api.dart';
import '../models/fire_sign_in_req_body_model.dart';
import 'package:injectable/injectable.dart' show LazySingleton;

import '../models/sign_in_req_body_model.dart';

@LazySingleton(
  as: SignInRepo,
)
class SignInRepoImpl implements SignInRepo {
  SignInRemDataSrc loginRemDataSrc;
  SignInApi loginApi;
  NetworkInfo networkInfo;
  FirebaseAuth firebaseAuth;
  SignInRepoImpl({
    required this.loginRemDataSrc,
    required this.loginApi,
    required this.networkInfo,
    required this.firebaseAuth,
  });
  @override
  Future<Either<FirebaseFailure, UserCredential>> fireSignIn({
    required FireSignInReqBodyModel fireSignInReqBodyModel,
  }) async {
    try {
      final userCredential = await loginRemDataSrc.fireSignIn(
        fireSignInReqBodyModel: fireSignInReqBodyModel,
      );
      return Right(
        userCredential,
      );
    } on ExistedAccountException {
      return Left(
        ExistedAccountFailure(),
      );
    } on WrongPasswordException {
      return Left(
        WrongPasswordFailure(),
      );
    } on ServerException {
      return Left(
        ServerFailure(),
      );
    }
  }

  @override
  Future<ApiResult<UserData>> authToken({
    required SignInReqBodyModel signInReqBodyModel,
  }) async {
    try {
      final response = await loginApi.authToken(
        signInReqBodyModel: signInReqBodyModel,
      );
      return ApiResult.success(
        data: response,
      );
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }

  @override
  Future<Either<FirebaseFailure, Unit>> logOut() async {
    if (await networkInfo.isConnected) {
      try {
        // GoogleSignIn googleSignIn = GoogleSignIn();
        // await googleSignIn.signOut();
        // await FirebaseAuth.instance.signOut();
        return const Right(unit);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
