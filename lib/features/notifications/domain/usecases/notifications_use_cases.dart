import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';
import '../entities/notification_entity.dart';
import '../repo/notifications_repo.dart';

@singleton
class NotificationsUseCases {
  final NotificationsRepo notificationsRepo;
  NotificationsUseCases(this.notificationsRepo);

  Future<ExecuteGuard<List<NotificationEntity>>> getNotifications() async {
    return await notificationsRepo.getNotifications();
  }

  Future<ExecuteGuard<void>> markAsRead({required String id}) async {
    return await notificationsRepo.markAsRead(id: id);
  }
}
