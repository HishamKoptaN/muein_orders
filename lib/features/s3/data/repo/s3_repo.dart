import 'dart:io';
import '../../../../core/networking/api_result.dart';

abstract class S3Repo {
  Future<ApiResult<void>> uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  });
}
