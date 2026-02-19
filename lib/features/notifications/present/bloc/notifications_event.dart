part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.getNotifications({
    @Default(false) bool getMore,
  }) = _GetNotifications;
  const factory NotificationsEvent.markAsRead({required String id}) =
      _MarkAsRead;
}
