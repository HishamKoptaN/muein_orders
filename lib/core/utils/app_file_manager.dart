import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

@singleton
class AppFileManager {
  static const String _tempFilesFolder = 'temp_media_files';
  Directory? _appTempDirectory;

  Future<Directory> get _tempDirectory async {
    if (_appTempDirectory != null) return _appTempDirectory!;

    final appDocDir = await getApplicationDocumentsDirectory();
    _appTempDirectory = Directory('${appDocDir.path}/$_tempFilesFolder');
    if (!_appTempDirectory!.existsSync()) {
      await _appTempDirectory!.create(recursive: true);
    }

    return _appTempDirectory!;
  }

  Future<String?> copyFileToTempDirectory(String sourcePath) async {
    try {
      final file = File(sourcePath);
      if (!file.existsSync()) return null;

      final tempDir = await _tempDirectory;
      final fileExtension = _getFileExtension(sourcePath);
      final uniqueFileName = '${const Uuid().v4()}.$fileExtension';
      final newFilePath = '${tempDir.path}/$uniqueFileName';

      await file.copy(newFilePath);
      return newFilePath;
    } catch (e) {
      return null;
    }
  }

  Future<bool> deleteTempFile(String filePath) async {
    try {
      final file = File(filePath);
      if (file.existsSync()) {
        await file.delete();
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> deleteTempFilesForOrder(int orderId) async {
    try {
      final tempDir = await _tempDirectory;
      final files = tempDir.listSync();

      for (final file in files) {
        if (file is File) {
          await file.delete();
        }
      }
    } catch (e) {}
  }

  String _getFileExtension(String filePath) {
    return filePath.split('.').last.toLowerCase();
  }

  Future<bool> fileExists(String filePath) async {
    final file = File(filePath);
    return file.existsSync();
  }

  Future<int> getFileSize(String filePath) async {
    final file = File(filePath);
    if (file.existsSync()) {
      return file.length();
    }
    return 0;
  }
}
