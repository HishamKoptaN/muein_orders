import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../../../../../core/widgets/translated_text.dart';
import '../../../domain/entities/orders_res_entity.dart';

Widget reviewStatusSection({
  required DocEntity doc,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TrText(
        doc.docStatus?.name ?? '',
        style: TextStyle(
          color: doc.docStatus?.textColor,
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        'حالة المراجعة',
        style: TextStyle(
          fontSize: 10.sp,
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget copiesCountWidget({
  required DocEntity doc,
}) {
  if (doc.copiesCount != null && doc.copiesCount! > 0) {
    return Text(
      'مصحف${doc.copiesCount}',
      style: const TextStyle(
        fontFamily: 'Almarai',
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Color(0xFF323232),
      ),
    );
  }
  return const SizedBox.shrink();
}
