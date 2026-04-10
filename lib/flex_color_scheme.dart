import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget? child;
  const GradientBackground({super.key, this.child});
  static const String routeName = "GradientBackground";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: FigmaRoundedPanel(
            child: child,
          ),
        ),
      ),
    );
  }
}

class FigmaRoundedPanel extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final Color color;
  final Widget? child;

  const FigmaRoundedPanel({
    super.key,
    this.width = 375,
    this.height = 812,
    this.borderRadius = const BorderRadius.all(Radius.circular(24)),
    this.color = const Color(0xFF003A45),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        width: width,
        height: height,
        color: color,
        child: child,
      ),
    );
  }
}
