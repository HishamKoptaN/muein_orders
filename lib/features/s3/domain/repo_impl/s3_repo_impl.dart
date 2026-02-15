import 'package:injectable/injectable.dart';
import '../../../../core/errors/app_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/repo/s3_repo.dart';
import 'package:dio/dio.dart';
import 'dart:io';

@LazySingleton(as: S3Repo)
class S3RepoImpl implements S3Repo {
  final Dio _dio;
  S3RepoImpl(@Named('s3Dio') this._dio);
  @override
  Future<ApiResult<void>> uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  }) async {
    try {
      await _dio.put(
        uploadUrl,
        data: file.openRead(),
        options: Options(
          headers: {
            "Content-Type": contentType,
            "Content-Length": await file.length(),
          },
        ),
      );
      return ApiResult.success(data: null);
    } catch (e, st) {
      return ApiResult.failure(
        apiErrorModel: AppErrorHandler.toApiError(e, st),
      );
    }
  }
}
