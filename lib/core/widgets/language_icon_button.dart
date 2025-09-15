import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mubin_orders/features/language/view/select_language.dart'
    show SelectLanguage;


class LanguageIconButton extends StatelessWidget {
  const LanguageIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.language, color: Colors.black),
      onPressed: () {
        // Navigate to language screen
        context.goNamed(SelectLanguage.routeName);
      },
    );
  }
}
