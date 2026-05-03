import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/widgets/translated_text.dart';

Widget docActionButton({
  required BuildContext context,
  required int subCategoryId,
  required CachedDocEntity? cachedDoc,
}) {
  return OutlinedButton.icon(
    onPressed: () {
      NavigationService.pushNamed(
        context: context,
        routeName: AddCachedDocView.routeName,
        extra: {
          'cachedDoc': cachedDoc,
          'subCategoryId': subCategoryId,
        },
      );
    },
    label: TrText(
      cachedDoc?.uploadStatus != FileUploadStatus.init
          ? 'عرض التوثيق'
          : 'إضافة التوثيق',
      style: TextStyle(
        color: cachedDoc?.uploadStatus != FileUploadStatus.init
            ? const Color(0xFF003A46)
            : Colors.grey[700],
        fontWeight: FontWeight.w700,
        fontSize: 12.sp,
        overflow: TextOverflow.ellipsis,
      ),
      softWrap: true,
      maxLines: 2,
    ),
    icon: Icon(
      cachedDoc?.uploadStatus != FileUploadStatus.init
          ? Icons.visibility_outlined
          : Icons.add_circle_outline,
      color: cachedDoc?.uploadStatus != FileUploadStatus.init
          ? const Color(0xFF003A46)
          : Colors.grey[600],
    ),
    style: OutlinedButton.styleFrom(
      side: BorderSide(
        color: cachedDoc?.uploadStatus != FileUploadStatus.init
            ? const Color(0xFF003A46)
            : Colors.grey[300]!,
        width: 1.5,
      ),
      foregroundColor: cachedDoc?.uploadStatus != FileUploadStatus.init
          ? const Color(0xFF003A46).withValues(alpha: 0.1)
          : Colors.grey.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 6.h,
        horizontal: 10.w,
      ),
    ),
  );
}
