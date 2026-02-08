import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/language/view/select_language.dart';

class LanguageIconButton extends StatelessWidget {
  const LanguageIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.language, color: Colors.black),
      onPressed: () {
        context.goNamed(SelectLanguageView.routeName);
      },
    );
  }
}
