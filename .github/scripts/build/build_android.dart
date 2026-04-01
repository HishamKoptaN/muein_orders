import 'dart:io';

void main() async {
  final String flavor = Platform.environment['FLAVOR'] ?? 'dev';
  await runCommand('flutter', [
    'build',
    'apk',
    '--release',
    '--flavor',
    flavor,
    '--dart-define=ENV=$flavor',
    '--target-platform',
    'android-arm,android-arm64',
    '--split-per-abi',
    '-t',
    'lib/main.dart',
  ]);
}

Future<void> runCommand(String executable, List<String> arguments) async {
  final result = await Process.run(executable, arguments);
  if (result.exitCode != 0) {
    exit(result.exitCode);
  }
}
