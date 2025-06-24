import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/language/bloc/language_cubit.dart';

class LanguageSwitchButton extends StatelessWidget {
  const LanguageSwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.watch<LanguageCubit>().state.languageCode;

    return IconButton(
      icon: Icon(Icons.language),
      tooltip: currentLocale == 'ar' ? 'English' : 'العربية',
      onPressed: () {
        final newLang = currentLocale == 'ar' ? 'en' : 'ar';
        context.read<LanguageCubit>().changeLanguage(newLang);
      },
    );
  }
}
