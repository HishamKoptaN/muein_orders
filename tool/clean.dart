import 'dart:io';

void main() {
  print('🚀 Starting safe clean...');
  
  // List of directories and files to clean
  final cleanTargets = [
    'build',
    '.dart_tool',
    '.packages',
    '.flutter-plugins',
    '.flutter-plugins-dependencies',
  ];

  // Clean each target
  for (final target in cleanTargets) {
    try {
      if (await FileSystemEntity.isDirectory(target)) {
        await Directory(target).delete(recursive: true);
        print('✅ Removed directory: $target');
      } else if (await File(target).exists()) {
        await File(target).delete();
        print('✅ Removed file: $target');
      }
    } catch (e) {
      print('⚠️  Could not remove $target: $e');
    }
  }

  print('\n✨ Clean completed!');
  print('Run "flutter pub get" to restore dependencies if needed.');
}
