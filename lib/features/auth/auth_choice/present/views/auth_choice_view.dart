import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../sign_in/present/views/sign_in_view.dart';
import '../../../sign_up/present/views/sign_up_views.dart';

class AuthChoiceView extends StatelessWidget {
  const AuthChoiceView({super.key});
  static const String routeName = 'auth-choice';
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
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
                'assets/logos/second_logo.png',
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
                  colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomBtnWidget(
                    text: 'إنشاء حساب',
                    onPressed: () {
                      NavigationService.navigateAndRemoveUntil(
                        context: context,
                        routeName: SignUpView.routeName,
                      );
                    },
                  ),
                  SizedBox(height: 40.h),
                  CustomBtnWidget(
                    onPressed: () {
                      NavigationService.navigateAndRemoveUntil(
                        context: context,
                        routeName: SignInView.routeName,
                      );
                    },
                    text: 'تسجيل الدخول',
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
