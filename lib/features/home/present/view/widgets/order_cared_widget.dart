import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routing/navigation_service.dart';
import '../../../../../core/utils/stream_utils.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../../cached_docs/present/view/add_cached_doc_view.dart';
import '../../../../orders/present/views/orders_view.dart';
import '../../../domain/entities/order_type_res_entity.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key, required this.stat}) : super(key: key);
  final StatEntity stat;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CachedDocEntity>(
      stream: createThrottledStream(
        getIt<AppDatabase>().watchDoc(docId: stat.doc?.id ?? 0).distinct(),
        throttleDuration: const Duration(milliseconds: 800),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final cachedDoc = snapshot.data;
        return GestureDetector(
          onTap: () {
            if (stat.subCategory?.id != 5) {
              if (stat.docsCount != 0) {
                NavigationService.pushNamed(
                  context: context,
                  routeName: OrderDocsView.routeName,
                  extra: {'stat': stat},
                );
              }
            } else if (stat.subCategory?.id == 5) {
              NavigationService.pushNamed(
                context: context,
                routeName: AddCachedDocView.routeName,
                extra: {
                  'cachedDoc': cachedDoc?.copyWith(docId: stat.doc?.id ?? 0),
                  'subCategoryId': stat.subCategory?.id,
                },
              );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  stat.subCategory?.image ?? '',
                  cacheKey: stat.subCategory?.image,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 70.h,
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: TrText(
                            stat.subCategory?.name ?? '',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Almarai',
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: TrText(
                                  'عدد الطلبات',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Jost',
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Gap(5.w),
                              Flexible(
                                child: TrText(
                                  '(${stat.docsCount ?? ''})',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Jost',
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
