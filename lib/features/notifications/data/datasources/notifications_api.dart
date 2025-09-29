import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show injectable, factoryMethod;
import 'package:retrofit/retrofit.dart';
import '../../../../core/config/app_config.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/notification_model.dart';

part 'notifications_api.g.dart';

@RestApi(
  baseUrl: AppConfig.apiBaseUrl,
)
@injectable
abstract class NotificationsApi {
  @factoryMethod
  factory NotificationsApi(
    Dio dio, {
    String? baseUrl,
  }) = _NotificationsApi;

  // Get notifications
  @GET(ApiConstants.notifications)
  Future<List<NotificationModel>> getNotifications({
    @Query('page') int? page,
  });
  // TODO: confirm mark-as-read endpoint before enabling
  // Example (do not enable until confirmed):
  // @POST('${ApiConstants.notifications}/{id}/read')
  // Future<void> markAsRead(@Path('id') String id);
}
