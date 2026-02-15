import '../../../../core/networking/api_result.dart';
import '../entities/profile_res_entity.dart';
import '../entities/presigned_url_entity.dart';
import '../entities/update_profile_req_entity.dart';

abstract class ProfileRepo {
  Future<ApiResult<ProfileResEntity>> getProfile();
  Future<ApiResult<PresignedUrlEntity>> presignedAvatarUrl({
    required String extension,
  });
  Future<ApiResult<ProfileResEntity>> updateProfile({
    required UpdateProfileReqEntity updateProfileReqEntity,
  });
}
