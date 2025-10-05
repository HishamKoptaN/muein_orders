part of '../notifications_view_clean.dart';

class _NotificationList extends StatelessWidget {
  final List<CachedDocEntity> docs;

  const _NotificationList({
    required this.docs,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: docs.length,
      itemBuilder: (context, index) {
        return _NotificationItem(doc: docs[index]);
      },
    );
  }
}
