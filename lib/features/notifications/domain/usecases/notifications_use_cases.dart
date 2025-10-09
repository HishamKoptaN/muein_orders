import '../../../../../core/networking/api_result.dart';
import '../entities/notification_entity.dart';
import '../repo/notifications_repo.dart';
import 'package:injectable/injectable.dart';

@singleton
class NotificationsUseCases {
  final NotificationsRepo notificationsRepo;
  NotificationsUseCases(this.notificationsRepo);

  Future<ApiResult<List<AppNotification>>> getNotifications({int? page}) async {
    return await notificationsRepo.getNotifications(page: page);
  }

  Future<ApiResult<void>> markAsRead({required String id}) async {
    return await notificationsRepo.markAsRead(id: id);
  }
}
