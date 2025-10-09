import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/api_error_handler.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/repo/notifications_repo.dart';
import '../datasources/notifications_api.dart';
import '../mappers/notification_mapper.dart';

@Singleton(
  as: NotificationsRepo,
)
class NotificationsRepoImpl implements NotificationsRepo {
  final NotificationsApi api;
  NotificationsRepoImpl(this.api);

  @override
  Future<ApiResult<List<AppNotification>>> getNotifications({int? page}) async {
    try {
      final res = await api.getNotifications(page: page);
      final result = res.map((e) => e.toEntity()).toList();
      return ApiResult.success(data: result);
    } catch (error) {
      return ApiResult.failure(
        apiErrorModel: ApiErrorHandler.handle(error: error),
      );
    }
  }

  @override
  Future<ApiResult<void>> markAsRead({required String id}) async {
    // TODO: implement once API endpoint is confirmed in NotificationsApi
    // final res = await api.markAsRead(id);
    return ApiResult.failure(
      apiErrorModel: ApiErrorHandler.handle(
        error: UnimplementedError('markAsRead endpoint not implemented'),
      ),
    );
  }
}
