import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/entities/update_profile_req_entity.dart';
import '../models/profile_model.dart';

part 'profile_api.g.dart';

@RestApi()
abstract class ProfileApi {
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
