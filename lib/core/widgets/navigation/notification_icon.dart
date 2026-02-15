import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/cached_docs/data/datasources/local/drift/app_database.dart';
import '../../di/dependency_injection.dart';
import '../../present/views/notifications_view_clean.dart';
import '../../services/notification_manager.dart';

class NotificationIcon extends StatefulWidget {
  const NotificationIcon({super.key});
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  late final NotificationManager _notificationManager;
  late final Stream<int> _notificationCountStream;

  @override
  void initState() {
    super.initState();
    _notificationManager = getIt<NotificationManager>();

    // مراقبة عدد الإشعارات النشطة
    _notificationCountStream = Stream.periodic(
      const Duration(seconds: 5),
      (_) => _getActiveNotificationsCount(),
    ).asyncMap((_) async => await _getActiveNotificationsCount());
  }

  Future<int> _getActiveNotificationsCount() async {
    try {
      final db = getIt<AppDatabase>();
      final activeDocs = await (db.select(
        db.cachedDocs,
      )..where((tbl) => tbl.uploadStatus.equals('uploading'))).get();

      return activeDocs.length;
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _notificationCountStream,
      builder: (context, snapshot) {
        final count = snapshot.data ?? 0;

        return badges.Badge(
          showBadge: count > 0,
          badgeContent: Text(
            count.toString(),
            style: TextStyle(color: Colors.white, fontSize: 10.sp),
          ),
          badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(4.w),
          ),
          child: IconButton(
            icon: Icon(Icons.notifications_outlined, size: 24.w),
            onPressed: () {
              Navigator.pushNamed(context, NotificationsView.routeName);
            },
          ),
        );
      },
    );
  }
}
