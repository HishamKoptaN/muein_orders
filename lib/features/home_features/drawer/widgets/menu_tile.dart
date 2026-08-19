import 'package:flutter/material.dart';

import '../../../../core/widgets/translated_text.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    this.textColor = Colors.black87,
  });

  final String title;
  final Widget? icon;
  final VoidCallback? onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null
          ? IconTheme(
              data: IconThemeData(
                color: textColor == Colors.black87
                    ? const Color(0xFF6C7072)
                    : textColor,
                size: 22,
              ),
              child: icon!,
            )
          : null,
      title: TrText(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      dense: true,
      visualDensity: const VisualDensity(vertical: -1),
    );
  }
}
