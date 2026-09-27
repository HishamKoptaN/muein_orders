import 'dart:io';

void main() {
  final dir = Directory('lib');
  var count = 0;
  for (final file in dir.listSync(recursive: true)) {
    if (file is File && file.path.endsWith('.freezed.dart')) {
      var content = file.readAsStringSync();
      // Look for things like {final List<, required final List<, etc.
      var newContent = content.replaceAll(RegExp(r'(\{|, |required |@JsonKey\([^)]*\)\s+)final\s+List<'), r'$1List<');
      
      if (newContent != content) {
        file.writeAsStringSync(newContent);
        print('Fixed ${file.path}');
        count++;
      }
    }
  }
  print('Total fixed: $count');
}
