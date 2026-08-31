import 'package:error_handler/error_handler.dart';
import '../entities/profile_res_entity.dart';
import '../entities/presigned_url_entity.dart';
import '../entities/update_profile_req_entity.dart';

abstract class ProfileRepo {
  Future<ExecuteGuard<ProfileResEntity>> getProfile();
  Future<ExecuteGuard<PresignedUrlEntity>> presignedAvatarUrl({
    required String extension,
  });
  Future<ExecuteGuard<ProfileResEntity>> updateProfile({
    required UpdateProfileReqEntity updateProfileReqEntity,
  });
}
