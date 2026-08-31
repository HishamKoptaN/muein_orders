import 'dart:io';
import 'package:error_handler/error_handler.dart';

abstract class S3Repo {
  Future<ExecuteGuard<void>> uploadFile({
    required File file,
    required String uploadUrl,
    required String contentType,
  });
}
