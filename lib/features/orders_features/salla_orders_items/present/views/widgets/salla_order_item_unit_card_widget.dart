import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local_data_src/drift/app_database.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../docs/domain/entities/doc_entity.dart';
import '../debug/doc_debuge.dart';
import 'doc/doc_review_status.dart';
import 'doc/doc_status_icons.dart';
import 'doc/doc_upload_status.dart';
import 'salla_order_item_card_widget.dart';

class SallaOrderItemUnitCardWidget extends StatefulWidget {
  const SallaOrderItemUnitCardWidget({
    super.key,
    required this.executionNumber,
    required this.printedName,
    required this.doc,
  });
  final String executionNumber;
  final String printedName;
  final DocEntity doc;

  @override
  State<SallaOrderItemUnitCardWidget> createState() =>
      _SallaOrderItemUnitCardWidgetState();
}

class _SallaOrderItemUnitCardWidgetState
    extends State<SallaOrderItemUnitCardWidget> {
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
      showTestMenu(
        context: context,
        cachedDoc: widget.doc,
        db: getIt<AppDatabase>(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handleTripleTap(context);
      },
      child: Container(
        padding: .all(8.r),
        decoration: BoxDecoration(
          color: Colors.white,
          border: .all(color: const Color(0xFFF0EFEF)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: .circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          mainAxisSize: .min,
          spacing: 2.h,
          children: [
            Row(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        widget.executionNumber,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0062B7),
                          fontSize: 14.sp,
                        ),
                      ),
                    
                      docFilesIcons(doc: widget.doc),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    mainAxisSize: .min,
                    spacing: 4.h,
                    children: [
                      uploadStatusSection(context: context, doc: widget.doc),
                      FilledButton.icon(
                        onPressed: () {
                          NavigationService.pushNamed(
                            context: context,
                            routeName: AddCachedDocView.routeName,
                            extra: {'cachedDoc': widget.doc},
                          );
                        },
                        iconAlignment: .end,
                        label: TrText(
                          widget.doc.uploadStatus != .init
                              ? 'عرض التوثيق'
                              : 'إضافة التوثيق',
                        ),
                        icon: Icon(
                          widget.doc.uploadStatus != .init
                              ? Icons.visibility_outlined
                              : Icons.add_circle_outline,
                        ),
                      ),
                      reviewStatusSection(context: context, doc: widget.doc),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
            Center(
              child: MakeStickerPdfBtn(
                executionNumber: widget.executionNumber,
                printedName: widget.printedName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
