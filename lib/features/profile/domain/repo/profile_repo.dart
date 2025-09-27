import '../../../../core/networking/api_result.dart';
import '../entities/profile_entity.dart';
import '../entities/update_profile_req_entity.dart';

abstract class ProfileRepo {
  Future<ApiResult<ProfileEntity>> getProfile();
  Future<ApiResult<ProfileEntity>> updateProfile(
     {required UpdateProfileReqEntity updateProfileReqEntity});
}
