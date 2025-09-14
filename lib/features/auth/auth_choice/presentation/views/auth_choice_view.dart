import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mubin_orders/core/theme/app_colors.dart';
import 'package:mubin_orders/features/auth/sign_in/present/views/sign_in_view.dart';
import 'package:mubin_orders/gen/assets.gen.dart';
import 'package:mubin_orders/l10n/app_localizations.dart';

class AuthChoiceView extends StatelessWidget {
  const AuthChoiceView({super.key});
  static const String routeName = "AuthChoiceView";
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              Assets.images.selectSignInUpBack.path,
              fit: BoxFit.cover,
            ),
          ),

          // Logo at the center
          Positioned(
            top: size.height * 0.2,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                Assets.logos.secondLogoPng.path,
                width: size.width * 0.6,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Buttons at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () =>
                          context.push('/sign-up'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        t.signUp,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  // Sign In Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () => context.push('/sign-in'),
                      child: Text(
                        t.login,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
