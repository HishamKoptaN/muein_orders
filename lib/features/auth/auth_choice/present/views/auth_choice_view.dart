import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../sign_in/present/views/sign_in_view.dart';
import '../../../sign_up/present/views/sign_up_view.dart';

class AuthChoiceView extends StatelessWidget {
  const AuthChoiceView({super.key});
  static const String routeName = 'auth-choice';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.images.selectSignInUpBack.path,
              fit: BoxFit.cover,
            ),
          ),
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
                  FilledButton(
                    child: const TrText('إنشاء حساب'),
                    onPressed: () {
                      NavigationService.navigateAndRemoveUntil(
                        context: context,
                        routeName: SignUpView.routeName,
                      );
                    },
                  ),
                  SizedBox(height: 40.h),
                  FilledButton(
                    onPressed: () {
                      NavigationService.navigateAndRemoveUntil(
                        context: context,
                        routeName: SignInView.routeName,
                      );
                    },
                    child: const TrText('تسجيل الدخول'),
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
