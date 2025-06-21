import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

DataCell customDataCell({
  required String text,
}) {
  return DataCell(
    Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      child: Text(
        text,
        softWrap: true,
        overflow: TextOverflow.visible,
        maxLines: 3,
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
    ),
  );
}
