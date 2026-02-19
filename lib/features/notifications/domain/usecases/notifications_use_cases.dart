import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../entities/notification_entity.dart';
import '../repo/notifications_repo.dart';

@singleton
class NotificationsUseCases {
  final NotificationsRepo notificationsRepo;
  NotificationsUseCases(this.notificationsRepo);

  Future<ApiResult<List<NotificationEntity>>> getNotifications() async {
    return await notificationsRepo.getNotifications();
  }

  Future<ApiResult<void>> markAsRead({required String id}) async {
    return await notificationsRepo.markAsRead(id: id);
  }
}
