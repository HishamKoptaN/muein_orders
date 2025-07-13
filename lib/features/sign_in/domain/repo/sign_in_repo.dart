import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/models/user_data.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/errors/firebase_failures.dart';
import '../../data/models/fire_sign_in_req_body_model.dart';
import '../../data/models/sign_in_req_body_model.dart';

abstract class SignInRepo {
  Future<Either<FirebaseFailure, UserCredential>> fireSignIn({
    required FireSignInReqBodyModel fireSignInReqBodyModel,
  });
  Future<ApiResult<UserData?>> authToken({
    required SignInReqBodyModel signInReqBodyModel,
  });
  Future<Either<FirebaseFailure, Unit>> logOut();
}
