import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/notification_model.dart';

part 'notifications_api.g.dart';

@RestApi()
@singleton
abstract class NotificationsApi {
  @factoryMethod
  factory NotificationsApi(Dio dio) = _NotificationsApi;
  //! Get
  @GET(ApiConstants.notifications)
  Future<List<NotificationModel>> get();
  @POST('${ApiConstants.notifications}/{id}/read')
  Future<void> markAsRead(@Path('id') String id);
}
