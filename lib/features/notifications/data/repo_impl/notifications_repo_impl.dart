import 'package:injectable/injectable.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/api_error_model/api_error_model.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/repo/notifications_repo.dart';
import '../datasources/notifications_api.dart';
import '../mappers/notification_mapper.dart';

@Singleton(as: NotificationsRepo)
class NotificationsRepoImpl implements NotificationsRepo {
  final NotificationsApi api;
  NotificationsRepoImpl(this.api);

  @override
  Future<ApiResult<List<NotificationEntity>>> getNotifications() async {
    try {
      final res = await api.get();
      final result = res.map((e) => e.toEntity()).toList();
      return ApiResult.success(data: result);
    } catch (error) {
      return const ApiResult.failure(errorInfo: ErrorInfo());
    }
  }

  @override
  Future<ApiResult<void>> markAsRead({required String id}) async {
    // TODO: implement once API endpoint is confirmed in NotificationsApi
    // final res = await api.markAsRead(id);
    return const ApiResult.failure(errorInfo: ErrorInfo());
  }
}
