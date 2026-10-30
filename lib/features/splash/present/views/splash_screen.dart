import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        body: Center(
          child: Padding(
            padding: .all(24.r),
            child: Text(
              'Splash Screen',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      );
    }
  }
}
