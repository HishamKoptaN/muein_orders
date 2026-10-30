import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/core/extensions/theme_ext.dart';
import '../bloc/notifications_bloc.dart';
import 'widgets/notification_list_widget.dart';

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
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'الإشعارات',
          style: context.textTheme.titleLarge,
        ),
        backgroundColor: context.colorScheme.surface,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: context.colorScheme.surfaceContainerHighest.withOpacity(0.3),
        child: const NotificationListWidget(),
      ),
    );
  }
}
