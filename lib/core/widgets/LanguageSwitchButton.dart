import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mubin_orders/features/language/bloc/language_bloc.dart';

class LanguageSwitchButton extends StatelessWidget {
  const LanguageSwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LanguageBloc>().state;
    final currentLocale = state.maybeWhen(
      loaded: (locale) {
        return IconButton(
          icon: const Icon(Icons.language),
          tooltip: locale.languageCode == 'ar' ? 'English' : 'العربية',
          onPressed: () {
            final newLang = locale.languageCode == 'ar' ? 'en' : 'ar';
            context.read<LanguageBloc>().add(
              LanguageEvent.changeLanguage(
                languageCode: newLang,
                countryCode: 'US',
              ),
            );
          },
        );
      },
      orElse: () => null,
    );
    return currentLocale ?? const SizedBox.shrink();
  }
}
