import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/routing/navigation_service.dart';
import '../../l10n/app_localizations.dart';
import '../language/view/select_language.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  static const String routeName = 'start';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/start_back.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          t.welcomeLine1,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          t.welcomeLine2,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        Image.asset(
                          'assets/logos/second_logo.png',
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                // Buttons
                Padding(
                  padding: const EdgeInsets.only(bottom: 49.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        // Language Selection Button
                        ElevatedButton.icon(
                          key: const Key('selectLanguage'),
                          onPressed: () {
                            NavigationService.navigateTo(
                              context: context,
                              routeName: SelectLanguageView.routeName,
                            );
                          },
                          icon: SvgPicture.asset(
                            'assets/icons/iconoir_language.svg',
                            width: 24,
                            height: 24,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          label: Text(
                            t.selectLanguage,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
