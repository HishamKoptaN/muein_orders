import 'dart:io';

Future<void> main() async {
  print('\n⚙️ Running post-get automation for l10n...');
  final result = await Process.run(
    'dart',
    ['run', 'tool/manage_l10n.dart'],
    runInShell: true,
  );

  stdout.write(result.stdout);
  stderr.write(result.stderr);

  if (result.exitCode == 0) {
    print('✅ L10n automation finished successfully.\n');
  } else {
    print('❌ L10n automation failed. Exit code: ${result.exitCode}');
  }
}
