import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:gap/gap.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../domain/entities/orders_res_entity.dart';

import 'doc.dart';
import 'doc_status_icons.dart';
import 'doc_upload_status.dart';
import 'doc_review_status.dart';

Widget docWidget({
  required BuildContext context,
  required DocEntity doc,
  required int subCategoryId,
  VoidCallback? onRetry,
}) {
  return StreamBuilder<CachedDocEntity>(
    stream: createThrottledStream(
      getIt<AppDatabase>().watchDoc(docId: doc.id).distinct(),
      throttleDuration: const Duration(milliseconds: 800),
    ),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      final cachedDoc = snapshot.data;

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
                  cachedDoc: cachedDoc,
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
                    uploadStatusSection(context: context, cachedDoc: cachedDoc),
                    docActionButton(
                      context: context,
                      subCategoryId: subCategoryId,
                      cachedDoc: cachedDoc,
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
    },
  );
}
