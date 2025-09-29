import 'package:flutter/widgets.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../gen/assets.gen.dart';

class SignInBackground extends StatelessWidget {
  final Widget child;
  const SignInBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.rectangle10.path),
          alignment: Alignment.topLeft,
          fit: BoxFit.none,
          colorFilter: const ColorFilter.mode(
            AppColors.brandMint,
            BlendMode.srcIn,
          ),
        ),
      ),
      child: child,
    );
  }
}
