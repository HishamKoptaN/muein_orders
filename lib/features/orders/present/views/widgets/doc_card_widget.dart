import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../debug/doc_debuge.dart';
import 'doc_widget.dart';

class DocCardWidget extends StatefulWidget {
  const DocCardWidget({
    super.key,
    required this.doc,
    required this.subCategoryId,
  });
  final DocEntity doc;
  final int subCategoryId;

  @override
  State<DocCardWidget> createState() => _DocCardWidgetState();
}

class _DocCardWidgetState extends State<DocCardWidget> {
  int _tapCount = 0;
  DateTime? _lastTapTime;
  void _handleTripleTap(BuildContext context) {
    if (!kDebugMode) return;
    final now = DateTime.now();
    if (_lastTapTime != null &&
        now.difference(_lastTapTime!) > const Duration(milliseconds: 500)) {
      _tapCount = 0;
    }
    _lastTapTime = now;
    _tapCount++;

    if (_tapCount >= 2) {
      _tapCount = 0;
      _openDebugMenu(context);
    }
  }

  void _openDebugMenu(BuildContext context) {
    showTestMenu(
      context: context,
      cachedDoc: widget.doc.cachedDoc ?? const CachedDocEntity(),
      db: getIt<AppDatabase>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handleTripleTap(context);
      },
      child: Container(
        padding: EdgeInsets.all(10.sp),
        margin: EdgeInsets.all(5.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFF0EFEF)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: buildDocContent(
          context: context,
          doc: widget.doc,
          subCategoryId: widget.subCategoryId,
        ),
      ),
    );
  }
}
