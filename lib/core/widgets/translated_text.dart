// lib/core/widgets/tr_text.dart
import 'package:flutter/material.dart';

import '../localization/auto_localizer.dart';

class TrText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDirection? textDirection;
  final int? maxLines;
  final bool? softWrap;
  const TrText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.textDirection,
    this.maxLines,
    this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: AutoLocalizer.translate(
        text,
        Localizations.localeOf(context).languageCode,
      ),
      initialData: text,
      builder: (context, snapshot) {
        return Text(
          snapshot.data ?? text,
          style: style,
          textAlign: textAlign,
          overflow: overflow,
          textDirection: textDirection,
          maxLines: maxLines,
          softWrap: softWrap,
        );
      },
    );
  }
}
