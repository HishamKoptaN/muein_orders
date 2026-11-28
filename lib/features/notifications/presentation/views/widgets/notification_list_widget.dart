import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_empty_widget.dart';
import '../../bloc/notifications_bloc.dart';
import 'notification_item_widget.dart';

class NotificationListWidget extends StatelessWidget {
  const NotificationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsBloc, NotificationsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => Center(
            child: CircularProgressIndicator(
              color: context.colorScheme.primary,
            ),
          ),
          loaded: (notifications) {
            if (notifications.isEmpty) {
              return CustomEmptyWidget(
                icon: Icon(
                  Icons.notifications_off,
                  size: 40.sp,
                  color: context.colorScheme.primary,
                ),
                title: 'لا توجد إشعارات',
                subtitle:
                    'لا توجد إشعارات متاحة حاليًا، سيتم عرض الإشعارات هنا عند توفرها',
              );
            }
            return ListView.separated(
              padding: EdgeInsets.all(16.r),
              itemCount: notifications.length,
              itemBuilder: (context, i) {
                final noti = notifications[i];
                return NotificationItemWidget(item: noti);
              },
              separatorBuilder: (context, i) {
                return Gap(10.h);
              },
            );
          },
          failure: (error) => Center(
            child: Text(
              'حدث خطأ ما',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.error,
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
