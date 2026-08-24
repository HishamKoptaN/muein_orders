import 'package:flutter/widgets.dart';

import '../../../../../../core/theme/core/extensions/theme_ext.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 148),
        Image.asset(
          'assets/logos/logo_solid.png',
          width: 272,
          height: 137,
          color: context.colorScheme.primary,
        ),
      ],
    );
  }
}
