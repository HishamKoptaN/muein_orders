import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/routing/navigation_service.dart';
import '../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../../../orders_features/salla_orders_items/present/views/salla_order_items_view.dart';
import '../../../domain/entities/order_type_res_entity.dart';

class StatCard extends StatelessWidget {
  const StatCard({Key? key, required this.stat}) : super(key: key);
  final StatEntity stat;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationService.pushNamed(
          context: context,
          routeName: SallaOrderItemsView.routeName,
          extra: {'stat': stat},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: .circular(12.r),
          // image: DecorationImage(
          //   image: CachedNetworkImageProvider(
          //     stat.subCategory?.image ?? '',
          //     cacheKey: stat.subCategory?.image,
          //   ),
          //   fit: .fill,
          // ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: .circular(12.r),
            gradient: LinearGradient(
              begin: .topCenter,
              end: .bottomCenter,
              colors: [Colors.transparent, Colors.black.withValues(alpha: 0.6)],
            ),
          ),
          child: Column(
            mainAxisAlignment: .end,
            crossAxisAlignment: .center,
            mainAxisSize: .min,
            children: [
              Container(
                height: 70.h,
                constraints: BoxConstraints(minWidth: 150.w),
                margin: .only(bottom: 16.h),
                padding: .all(8.r),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.25),
                  borderRadius: .circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  mainAxisSize: .min,
                  children: [
                    // Flexible(
                    //   child: TrText(
                    //     stat.subCategory?.name ?? '',
                    //     style: context.textTheme.bodyLarge?.copyWith(
                    //       color: context.colorScheme.onPrimary,
                    //     ),
                    //     maxLines: 2,
                    //     overflow: .ellipsis,
                    //     textAlign: .center,
                    //   ),
                    // ),
                    if (stat.id != 5)
                      Flexible(
                        child: Row(
                          mainAxisAlignment: .spaceEvenly,
                          crossAxisAlignment: .center,
                          mainAxisSize: .min,
                          children: [
                            Flexible(
                              child: TrText(
                                'عدد الطلبات',
                                overflow: .ellipsis,
                                style: context.textTheme.bodyMedium?.copyWith(
                                  color: context.colorScheme.onPrimary,
                                ),
                              ),
                            ),
                            Gap(5.w),
                            Flexible(
                              child: TrText(
                                '(${stat.docsCount ?? ''})',
                                overflow: .ellipsis,
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: context.colorScheme.onPrimary,
                                ),
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
  }
}
