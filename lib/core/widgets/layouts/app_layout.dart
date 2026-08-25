import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../translated_text.dart';
import 'package:go_router/go_router.dart';

import '../../language/view/select_language.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({
    super.key,
    required this.route,
    required this.body,
    required this.showAppBar,
    this.backArow = true,
  });
  final String route;
  final Widget body;
  final bool showAppBar;
  final bool backArow;

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.showAppBar
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: widget.backArow
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  : null,
              title: TrText(
                widget.route,
                style: const TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              actions: const [
                LanguageIconButton(),
                SizedBox(width: 8), // Add some spacing
              ],
            )
          : null,
      body: widget.body,
    );
  }
}

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
