import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../repo/s3_repo.dart';

@LazySingleton(as: S3Repo)
class S3RepoImpl implements S3Repo {
  const S3RepoImpl(@Named('s3Dio') this._dio);

  final Dio _dio;

  @override
  Future<ExecuteGuard<void>> uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  }) async {
    try {
      final int fileLength = await file.length();
      await _dio.put(
        uploadUrl,
        data: file.openRead(),
        options: Options(
          headers: {
            'Content-Type': contentType,
            'Content-Length': fileLength,
            'Accept': '*/*',
          },
        ),
        onSendProgress: (int sent, int total) {
          if (total > 0) {
            print(
              'Upload Progress: ${(sent / total * 100).toStringAsFixed(2)}%',
            );
          }
        },
      );
      return const ExecuteGuard.success(data: null);
    } catch (e, st) {
      return const ExecuteGuard.failure(errorInfo: ErrorInfo());
    }
  }
}
