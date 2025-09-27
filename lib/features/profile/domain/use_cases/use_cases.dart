import 'package:injectable/injectable.dart';

import '../../../../core/networking/api_result.dart';
import '../entities/profile_entity.dart';
import '../entities/update_profile_req_entity.dart';
import '../repo/profile_repo.dart';

@injectable
class ProfileUseCases {
  final ProfileRepo _profileRepo;

  const ProfileUseCases(this._profileRepo);

  Future<ApiResult<ProfileEntity>> getProfile() async {
    return await _profileRepo.getProfile();
  }

  Future<ApiResult<ProfileEntity>> updateProfile(
      {required UpdateProfileReqEntity updateProfileReqEntity}) async {
    return await _profileRepo.updateProfile(
      updateProfileReqEntity: updateProfileReqEntity,
    );
  }
}
