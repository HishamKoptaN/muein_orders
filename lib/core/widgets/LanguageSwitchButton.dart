import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mubin_orders/features/language/bloc/language_bloc.dart';

class LanguageSwitchButton extends StatelessWidget {
  const LanguageSwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.watch<LanguageBloc>().state.currentLocale;

    return IconButton(
      icon: Icon(Icons.language),
      tooltip: currentLocale == 'ar' ? 'English' : 'العربية',
      onPressed: () {
        final newLang = currentLocale == 'ar' ? 'en' : 'ar';
        context.read<LanguageBloc>().add(
              LanguageEvent.changeLanguage(
                languageCode: newLang,
                countryCode: 'US',
              ),
            );
      },
    );
  }
}
