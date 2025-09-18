import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../domain/entities/sign_up_res_entity.dart';
import '../domain/entities/signup_req_entity.dart';
import '../domain/repo/sign_up_repo.dart';
import 'data_sources/sign_up_api.dart';
import 'models/signup_req_model.dart';

@Injectable(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final SignUpApi _api;

  SignUpRepoImpl(this._api);

  @override
  Future<ApiResult<SignUpResEntity>> signUp({
    required SignUpReqEntity signUpReq,
  }) async {
    try {
      if (signUpReq.countryId == null) {
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'Country ID is required',
            statusCode: 400,
          ),
        );
      }

      final response = await _api.signUp(
        signUpReq: SignUpReqModel(
          firstName: signUpReq.firstName,
          lastName: signUpReq.lastName,
          phone: signUpReq.phone,
          email: signUpReq.email,
          password: signUpReq.password,
          countryId: signUpReq.countryId!,
        ),
      );

      return ApiResult.success(
        data: SignUpResEntity(
          token: response.token,
        ),
      );
    } on DioException catch (error) {
      log('SignUp Error: ${error.message}');
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(),
      );
    } catch (e) {
      log('Unexpected Error in SignUp: $e');
      return const ApiResult.failure(
        apiErrorModel: ApiErrorModel(),
      );
    }
  }
}
