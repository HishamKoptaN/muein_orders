import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/cached_docs/data/datasources/local/drift/app_database.dart';
import '../../di/dependency_injection.dart';
import '../../present/views/notifications_view.dart';

class NotificationIcon extends StatefulWidget {
  const NotificationIcon({super.key});

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  late final AppDatabase _db;
  late final Stream<int> _notificationCountStream;

  @override
  void initState() {
    super.initState();
    _db = getIt<AppDatabase>();
    _notificationCountStream = _db.watchUploadingDocsCount();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _notificationCountStream,
      builder: (context, snapshot) {
        final count = snapshot.data ?? 0;

        return IconButton(
          icon: badges.Badge(
            badgeContent: Text(
              count.toString(),
              style: TextStyle(color: Colors.white, fontSize: 10.sp),
            ),
            showBadge: count > 0,
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(4.w),
            ),
            child: Icon(Icons.notifications, color: Colors.white, size: 24.w),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(NotificationsView.routeName);
          },
        );
      },
    );
  }
}
