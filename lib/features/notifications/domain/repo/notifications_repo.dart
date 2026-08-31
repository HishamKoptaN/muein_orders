import 'package:error_handler/error_handler.dart';
import '../entities/notification_entity.dart';

abstract class NotificationsRepo {
  Future<ExecuteGuard<List<NotificationEntity>>> getNotifications();
  Future<ExecuteGuard<void>> markAsRead({required String id});
}
