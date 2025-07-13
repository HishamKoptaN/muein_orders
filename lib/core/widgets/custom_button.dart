import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.text,
    this.widget,
    this.backgroundColor,
    this.width,
    this.height,
    this.colorSide,
  });

  final VoidCallback onPressed;
  final String? text;
  final Widget? widget;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Color? colorSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 42,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: widget ??
            Text(
              text ?? '',
            ),
      ),
    );
  }
}
