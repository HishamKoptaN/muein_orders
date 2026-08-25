import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/models/device_model.dart';
import '../models/presigned/presigned_url_model.dart';
import '../models/presigned/presigned_url_req_model.dart';
import '../models/profile_res_model.dart';
import '../models/update_profile_req_model.dart';

part 'profile_api.g.dart';

@lazySingleton
@RestApi()
abstract class ProfileApi {
  @factoryMethod
  factory ProfileApi(Dio dio) = _ProfileApi;
  @GET('/profile')
  Future<ProfileResModel> getProfile();
  //! presignedAvatarUrl
  @POST('/profile/presigned')
  Future<PresignedUrlModel> presignedAvatarUrl({
    @Body() required PresignedUrlReqModel presignedUrlReqModel,
  });
  @POST('/profile')
  Future<ProfileResModel> updateProfile({
    @Body() required UpdateProfileReqModel updateProfileReqModel,
  });
  @POST('/devices')
  Future<void> devices({@Body() required DeviceModel device});
}
