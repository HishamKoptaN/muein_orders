import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../bloc/notifications_bloc.dart';
import 'widgets/widgets.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  void initState() {
    super.initState();
    getIt<NotificationsBloc>().add(const NotificationsEvent.getNotifications());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الإشعارات'),
      body: Container(
        color: const Color(0xFFFFFFFF),
        width: .infinity,
        height: .infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: .circular(6.r),
            color: const Color(0xFFF7F7F7),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                const SizedBox(height: 8),
                BlocBuilder<NotificationsBloc, NotificationsState>(
                  bloc: getIt<NotificationsBloc>(),
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (notifications) {
                        return ListView.separated(
                          shrinkWrap: true,
                          itemCount: notifications.length,
                          itemBuilder: (context, i) {
                            final noti = notifications[i];
                            return NotificationRow(item: noti);
                          },
                          separatorBuilder: (context, i) {
                            return Gap(10.h);
                          },
                        );
                      },
                      orElse: () {
                        return const SizedBox();
                      },
                    );
                  },
                ),
                // ...sectionsToShow.entries.expand(
                //   (entry) => [
                //     _SectionLabel(text: entry.key),
                //     _NotificationsCard(items: entry.value),
                //     const SizedBox(height: 16),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
