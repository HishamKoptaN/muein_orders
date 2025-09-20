import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/navigation/app_router.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/app_localizations.dart';
import '../language/view/select_language.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  static const String routeName = 'start';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
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
                            AppRouter.navigateTo(
                              context: context,
                              routeName: SelectLanguage.routeName,
                            );
                          },
                          icon: SvgPicture.asset(
                            Assets.icons.iconoirLanguage,
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
