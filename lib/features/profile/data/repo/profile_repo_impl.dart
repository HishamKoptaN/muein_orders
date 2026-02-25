import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/errors/app_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/presigned_url_entity.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/repo/profile_repo.dart';
import '../datasources/profile_api.dart';
import '../mappers/update_profile_mapper.dart';
import '../models/presigned/presigned_url_req_model.dart';
import '../models/profile_model_mapper.dart';

@LazySingleton(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileApi _profileApi;
  final FirebaseAuth _firebaseAuth;

  const ProfileRepoImpl(this._profileApi, this._firebaseAuth);

  @override
  Future<ApiResult<ProfileResEntity>> getProfile() async {
    try {
      // Get profile from backend
      final result = await _profileApi.getProfile();

      // Check Firebase authentication
      final firebaseUser = _firebaseAuth.currentUser;
      if (firebaseUser == null) {
        return const ApiResult.failure(
          apiErrorModel: ApiErrorModel(
            message: 'User not authenticated in Firebase',
            statusCode: 401,
          ),
        );
      }

      // Merge backend data with Firebase email
      final email = firebaseUser.email;
      final profileEntity = result.toEntity().copyWith(email: email ?? '');

      return ApiResult.success(data: profileEntity);
    } catch (e, st) {
      return ApiResult.failure(
        apiErrorModel: AppErrorHandler.toApiError(e, st),
      );
    }
  }

  @override
  Future<ApiResult<PresignedUrlEntity>> presignedAvatarUrl({
    required String extension,
  }) async {
    try {
      final result = await _profileApi.presignedAvatarUrl(
        presignedUrlReqModel: PresignedUrlReqModel(
          extensionProperty: extension,
        ),
      );
      return ApiResult.success(data: result.toEntity());
    } catch (e, st) {
      return ApiResult.failure(
        apiErrorModel: AppErrorHandler.toApiError(e, st),
      );
    }
  }

  @override
  Future<ApiResult<ProfileResEntity>> updateProfile({
    required UpdateProfileReqEntity updateProfileReqEntity,
  }) async {
    try {
      final model = updateProfileReqEntity.toModel();
      final result = await _profileApi.updateProfile(
        updateProfileReqModel: model,
      );
      final firebaseUser = _firebaseAuth.currentUser;
      final email = firebaseUser?.email;
      final profileEntity = result.toEntity().copyWith(email: email ?? '');
      return ApiResult.success(data: profileEntity);
    } catch (e, st) {
      return ApiResult.failure(
        apiErrorModel: AppErrorHandler.toApiError(e, st),
      );
    }
  }
}
