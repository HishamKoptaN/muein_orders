import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/entities/update_profile_req_entity.dart';
import '../models/profile_model.dart';

part 'profile_api.g.dart';

@lazySingleton
@RestApi()
abstract class ProfileApi {
  @factoryMethod
  factory ProfileApi(
    Dio dio,
  ) = _ProfileApi;

  @GET('/profile')
  Future<ProfileModel> getProfile();

  @POST('/profile')
  Future<ProfileModel> updateProfile({
    @Body() required UpdateProfileReqEntity updateProfileReqEntity,
  });
}
