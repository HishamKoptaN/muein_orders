import 'package:flutter/material.dart';
import '../translated_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final PreferredSize? bottom;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? style;
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.automaticallyImplyLeading = true,
    this.leading,
    this.backgroundColor,
    this.foregroundColor,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      title: TrText(title, style: style),
      bottom: bottom,
      actions: actions,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }
}
