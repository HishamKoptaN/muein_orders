import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:gap/gap.dart';
import '../../../domain/entities/orders_res_entity.dart';
import 'doc.dart';
import 'doc_status_icons.dart';
import 'doc_upload_status.dart';
import 'doc_review_status.dart';

Widget buildDocContent({
  required BuildContext context,
  required DocEntity doc,
  required int subCategoryId,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    spacing: 5.h,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: docFilesIcons(
              subCategoryId: subCategoryId,
              cachedDoc: doc.cachedDoc,
            ),
          ),
          Gap(40.w),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 25.h,
              children: [
                uploadStatusSection(context: context, cachedDoc: doc.cachedDoc),
                docActionButton(
                  context: context,
                  subCategoryId: subCategoryId,
                  cachedDoc: doc.cachedDoc,
                ),
                reviewStatusSection(doc: doc),
                copiesCountWidget(doc: doc),
              ],
            ),
          ),
          Flexible(child: Container()),
        ],
      ),
    ],
  );
}
