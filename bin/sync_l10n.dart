import 'package:mubin_orders/core/l10n/l10n_sync.dart';

Future<void> main() async {
  print('Starting language files synchronization...');
  await L10nSync.syncLanguageFiles();
}
