import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/notification_model.dart';

part 'notifications_api.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
)
abstract class NotificationsApi {
  factory NotificationsApi(
    Dio dio, {
    String? baseUrl,
  }) = _NotificationsApi;

  // Get notifications
  @GET(ApiConstants.notifications)
  Future<List<NotificationModel>> getNotifications({
    @Query("page") int? page,
  });

  // TODO: confirm mark-as-read endpoint before enabling
  // Example (do not enable until confirmed):
  // @POST('${ApiConstants.notifications}/{id}/read')
  // Future<void> markAsRead(@Path('id') String id);
}
