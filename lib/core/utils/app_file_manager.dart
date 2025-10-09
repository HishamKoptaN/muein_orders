import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class AppFileManager {
  static const String _tempFilesFolder = 'temp_media_files';
  Directory? _appTempDirectory;

  /// الحصول على مجلد الملفات المؤقتة الخاص بالتطبيق
  Future<Directory> get _tempDirectory async {
    if (_appTempDirectory != null) return _appTempDirectory!;

    final appDocDir = await getApplicationDocumentsDirectory();
    _appTempDirectory = Directory('${appDocDir.path}/$_tempFilesFolder');

    // إنشاء المجلد إذا لم يكن موجودًا
    if (!_appTempDirectory!.existsSync()) {
      await _appTempDirectory!.create(recursive: true);
    }

    return _appTempDirectory!;
  }

  /// نسخ ملف إلى مجلد التطبيق المؤقت
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

  /// حذف ملف مؤقت
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

  /// حذف جميع الملفات المؤقتة للطلب
  Future<void> deleteTempFilesForOrder(int orderId) async {
    try {
      final tempDir = await _tempDirectory;
      final files = tempDir.listSync();

      for (var file in files) {
        if (file is File) {
          // يمكن إضافة فلترة بناءً على اسم الملف أو البيانات الوصفية إذا لزم الأمر
          await file.delete();
        }
      }
    } catch (e) {
      // تجاهل الأخطاء في حذف الملفات المؤقتة
    }
  }

  /// الحصول على امتداد الملف
  String _getFileExtension(String filePath) {
    return filePath.split('.').last.toLowerCase();
  }

  /// التحقق من وجود الملف
  Future<bool> fileExists(String filePath) async {
    final file = File(filePath);
    return file.existsSync();
  }

  /// الحصول على حجم الملف
  Future<int> getFileSize(String filePath) async {
    final file = File(filePath);
    if (file.existsSync()) {
      return file.length();
    }
    return 0;
  }
}
