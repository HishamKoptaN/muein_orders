import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/errors/firebase_failures.dart';
import '../../../../core/models/user_data.dart';
import '../../../../core/networking/api_result.dart';
import 'package:injectable/injectable.dart' show lazySingleton;

import '../../data/models/fire_sign_in_req_body_model.dart';
import '../../data/models/sign_in_req_body_model.dart';
import '../repo/sign_in_repo.dart';

@lazySingleton
class SignInUseCases {
  final SignInRepo signInRepo;
  SignInUseCases({
    required this.signInRepo,
  });
  Future<Either<FirebaseFailure, UserCredential>> fireSignIn({
    required FireSignInReqBodyModel fireSignInReqBodyModel,
  }) async {
    return await signInRepo.fireSignIn(
      fireSignInReqBodyModel: fireSignInReqBodyModel,
    );
  }

  Future<ApiResult<UserData?>> authToken({
    required SignInReqBodyModel signInReqBodyModel,
  }) async {
    return await signInRepo.authToken(
      signInReqBodyModel: signInReqBodyModel,
    );
  }
}
