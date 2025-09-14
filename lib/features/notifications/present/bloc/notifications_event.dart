import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_event.freezed.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.getNotifications({@Default(false) bool getMore}) = _GetNotifications;
  const factory NotificationsEvent.markAsRead({required String id}) = _MarkAsRead;
}
