import 'package:injectable/injectable.dart';
import '../../../../core/error/app_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/repo/profile_repo.dart';
import '../datasources/profile_api.dart';
import '../models/profile_model_mapper.dart';

@LazySingleton(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileApi _profileApi;

  const ProfileRepoImpl(this._profileApi);

  @override
  Future<ApiResult<ProfileEntity>> getProfile() async {
    try {
      final result = await _profileApi.getProfile();
      return ApiResult.success(data: result.toEntity());
    } catch (e, st) {
      return ApiResult.failure(
        apiErrorModel: AppErrorHandler.toApiError(e, st),
      );
    }
  }

  @override
  Future<ApiResult<ProfileEntity>> updateProfile(
      {required UpdateProfileReqEntity updateProfileReqEntity}) async {
    try {
      final result = await _profileApi.updateProfile(
        updateProfileReqEntity: updateProfileReqEntity,
      );
      return ApiResult.success(data: result.toEntity());
    } catch (e, st) {
      return ApiResult.failure(
        apiErrorModel: AppErrorHandler.toApiError(e, st),
      );
    }
  }
}
