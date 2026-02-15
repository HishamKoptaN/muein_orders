import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';

extension Localization on BuildContext {
  AppLocalizations get t => AppLocalizations.of(this);
}
