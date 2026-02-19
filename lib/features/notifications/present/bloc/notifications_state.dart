part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.loading() = _Loading;
  const factory NotificationsState.loaded({
    required List<NotificationEntity> notifications,
  }) = _Loaded;
  const factory NotificationsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
