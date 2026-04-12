import 'package:flutter/material.dart';

import '../../../../../core/widgets/translated_text.dart';

/// زر تبويب فردي
class TabButtonWidget extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const TabButtonWidget({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color bg = selected ? const Color(0xFFFFFFFF) : Colors.transparent;
    final Color fg = selected
        ? const Color(0xFF222741)
        : const Color(0xFFACAEBE);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: TrText(text, style: TextStyle(color: fg, fontSize: 16)),
      ),
    );
  }
}
