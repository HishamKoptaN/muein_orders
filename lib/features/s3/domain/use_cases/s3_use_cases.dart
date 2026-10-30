import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../../data/repo/s3_repo.dart';

@lazySingleton
class S3UseCases {
  final S3Repo s3Repo;
  S3UseCases({required this.s3Repo});

  Future<ExecuteGuard<void>> uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  }) async {
    return await s3Repo.uploadFile(
      file: file,
      uploadUrl: uploadUrl,
      contentType: contentType,
    );
  }
}
