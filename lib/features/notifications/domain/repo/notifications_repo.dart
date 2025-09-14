import '../../../../core/networking/api_result.dart';
import '../entities/notification_entity.dart';

abstract class NotificationsRepo {
  Future<ApiResult<List<AppNotification>>> getNotifications({int? page});
  Future<ApiResult<void>> markAsRead({required String id});
}
