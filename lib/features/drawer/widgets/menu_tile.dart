import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    this.textColor = Colors.black87,
  });

  final String title;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color textColor;
                                    
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: textColor == Colors.black87
            ? const Color(0xFF6C7072)
            : textColor,
        size: 22,
      ),
      title: Text(
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
