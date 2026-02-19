import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../docs/domain/entities/docs_res_entity.dart';
import 'doc_widget.dart';

class DocCardWidget extends StatelessWidget {
  const DocCardWidget({super.key, required this.doc});
  final DocEntity doc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF0EFEF)),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: docWidget(context: context, docId: doc.id ?? 0),
    );
  }
}

Widget buildStatusMessage({
  required String text,
  required DocStatusEntity? docStatus,
}) {
  return Container(
    height: 70.h,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
            color: docStatus?.textColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 5.w),
        Text(text, style: TextStyle(color: docStatus?.textColor)),
      ],
    ),
  );
}
