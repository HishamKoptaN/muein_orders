import 'package:flutter/widgets.dart';

import '../../../../../../core/theme/app_colors.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 148),
        Image.asset(
          'assets/logos/mubin_logo.png',
          width: 272,
          height: 137,
          color: AppColors.brandMint,
        ),
      ],
    );
  }
}
