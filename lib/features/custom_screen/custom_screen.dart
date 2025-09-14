import 'package:flutter/material.dart';
import 'package:mubin_orders/core/all_imports.dart';
import 'package:mubin_orders/features/splash/custom_rounded_container.dart';

class CustomScreen extends StatelessWidget {
  static const String routeName = "custom_screen";
  
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: CustomRoundedContainer(
          width: 375,
          height: 812,
          child: const Center(
            child: Text(
              'Custom Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
