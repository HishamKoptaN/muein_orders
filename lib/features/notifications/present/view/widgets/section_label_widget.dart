import 'package:flutter/material.dart';

import '../../../../../core/widgets/translated_text.dart';

/// عنوان قسم الإشعارات
class SectionLabelWidget extends StatelessWidget {
  final String text;

  const SectionLabelWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 16, bottom: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: TrText(
          text,
          style: const TextStyle(color: Color(0xFFACAEBE), fontSize: 14),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
