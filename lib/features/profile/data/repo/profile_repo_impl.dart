import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/repo/profile_repo.dart';
import '../datasources/profile_api.dart';
import '../mappers/update_profile_mapper.dart';
import '../models/profile_model_mapper.dart';

@LazySingleton(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileApi _profileApi;
  final FirebaseAuth _firebaseAuth;

  const ProfileRepoImpl(this._profileApi, this._firebaseAuth);

  @override
  Future<ApiResult<ProfileResEntity>> getProfile() async {
    try {
      final result = await _profileApi.getProfile();
      print('DEBUG: API Result: ${result.toString()}');
      final firebaseUser = _firebaseAuth.currentUser;
      final email = firebaseUser?.email;
      final profileEntity = result.toEntity().copyWith(email: email ?? '');
      print('DEBUG: Profile Entity: ${profileEntity.toString()}');
      return ApiResult.success(data: profileEntity);
    } catch (e, st) {
      print('DEBUG: Error in getProfile: $e');
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
        model.image,
        model.name,
        model.phone,
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
