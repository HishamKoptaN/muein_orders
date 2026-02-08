import 'package:flutter/material.dart';

/// A customizable container with rounded corners and shadow
class CustomRoundedContainer extends StatelessWidget {
  /// The widget below this widget in the tree
  final Widget? child;

  /// The width of the container
  final double? width;

  /// The height of the container
  final double? height;

  /// The background color of the container
  final Color backgroundColor;

  /// The radius of the container's corners
  final double borderRadius;

  /// Empty space to inscribe inside the container
  final EdgeInsetsGeometry? padding;

  /// Empty space to surround the container
  final EdgeInsetsGeometry? margin;

  /// Creates a container with rounded corners and shadow
  const CustomRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.backgroundColor = const Color(0xFF003A45),
    this.borderRadius = 24.0,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        // Add shadow for better elevation
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      // Clip the child to the border radius
      clipBehavior: Clip.antiAlias,
      child: Material(color: Colors.transparent, child: child),
    );
  }
}
