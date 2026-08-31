import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../../../../gen/assets.gen.dart';
import '../../../s3/data/repo/s3_repo.dart';
import '../entities/profile_res_entity.dart';
import '../entities/update_profile_req_entity.dart';
import '../repo/profile_repo.dart';

@singleton
class ProfileUseCases {
  final ProfileRepo _profileRepo;
  final S3Repo s3Repo;
  const ProfileUseCases(this._profileRepo, this.s3Repo);

  Future<ExecuteGuard<ProfileResEntity>> getProfile() async {
    return await _profileRepo.getProfile();
  }

  Future<ExecuteGuard<ProfileResEntity>> updateProfile({
    required UpdateProfileReqEntity updateProfileReqEntity,
  }) async {
    if (updateProfileReqEntity.avatar != null) {
      final result = await _profileRepo.presignedAvatarUrl(
        extension:
            updateProfileReqEntity.avatar?.value?.path.split('.').last ?? '',
      );
      return await result.when(
        success: (s3Info) async {
          try {
            await s3Repo.uploadFile(
              file: File(updateProfileReqEntity.avatar?.value?.path ?? ''),
              uploadUrl: s3Info!.uploadUrl ?? '',
              contentType: s3Info.contentType ?? '',
            );
            return await _profileRepo.updateProfile(
              updateProfileReqEntity: updateProfileReqEntity.copyWith(
                avatarPath: s3Info.filePath,
              ),
            );
          } catch (e) {
            return const ExecuteGuard.failure(
              errorInfo: ErrorInfo(message: 'Failed to upload avatar'),
            );
          }
        },
        failure: (failure) {
          return ExecuteGuard.failure(errorInfo: failure);
        },
      );
    } else {
      return await _profileRepo.updateProfile(
        updateProfileReqEntity: updateProfileReqEntity,
      );
    }
  }

  // Future<ApiResult<ProfileResEntity>> updateProfile(
  //     {required UpdateProfileReqEntity updateProfileReqEntity}) async {
  //   return await _profileRepo.updateProfile(
  //     updateProfileReqEntity: updateProfileReqEntity,
  //   );
  // }
}
