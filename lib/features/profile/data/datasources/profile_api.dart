import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/config/app_config.dart';
import '../models/profile_res_model.dart';

part 'profile_api.g.dart';

@lazySingleton
@RestApi(baseUrl: AppConfig.apiBaseUrl)
abstract class ProfileApi {
  @factoryMethod
  factory ProfileApi(Dio dio) = _ProfileApi;
  @GET('/profile')
  Future<ProfileResModel> getProfile();
  @POST('/profile')
  @MultiPart()
  Future<ProfileResModel> updateProfile(
    @Part() File? image,
    @Part() String? name,
    @Part() String? phone,
  );
}
