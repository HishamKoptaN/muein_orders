import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/database/cache/shared_pref_helper.dart';
import '../../../core/database/cache/shared_pref_keys.dart';

@injectable
class LanguageCubit extends Cubit<Locale> {
  LanguageCubit(super.initialLocale);
  Future<void> changeLanguage({required String languageCode}) async {
    final newLocale = Locale(languageCode);
    await SharedPrefHelper.setData(
      key: SharedPrefKeys.languageCode,
      value: languageCode,
    );
    emit(newLocale);
  }
}
