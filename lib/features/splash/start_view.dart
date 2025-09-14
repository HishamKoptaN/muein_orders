import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mubin_orders/features/language/view/select_language.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/app_localizations.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  static const String routeName = "start";

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              Assets.images.startBack.path,
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
                          'l10n.welcomeLine1',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 1.2,
                            letterSpacing: -0.01,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'l10n.welcomeLine2',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 1.2,
                            letterSpacing: -0.01,
                            fontFamily: "Tajawal",
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        Image.asset(
                          Assets.logos.secondLogoPng.path,
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
                            // Navigate to language selection screen using GoRouter
                            context.pushNamed(SelectLanguage.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.2),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          icon: SvgPicture.asset(
                            Assets.icons.iconoirLanguage,
                            width: 24,
                            height: 24,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                          label: Text(
                            l10n.selectLanguage,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Continue as Guest Button
                        OutlinedButton(
                          onPressed: () async {
                            // Navigate to main app without authentication
                            // final prefs = context.read<PrefsStorageService>();
                            // await prefs.setBool(
                            //     SharedPrefKeys.skippedLogin, true);
                            // if (context.mounted) {
                            //   context.go('/${MainView.routeName}');
                            // }
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'l10n.continueAsGuest',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
