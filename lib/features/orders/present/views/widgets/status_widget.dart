import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../../../../../core/widgets/translated_text.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.icon,
    this.text,
    required this.color,
  });
  final Widget? icon;
  final String? text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (icon != null) icon!,
        SizedBox(width: 5.w),
        if (text != null)
          Flexible(
            child: TrText(
              text ?? '',
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: color),
            ),
          ),
      ],
    );
  }
}
