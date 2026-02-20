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
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF0EFEF)),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: docWidget(context: context,doc:doc,),
    );
  }
}
