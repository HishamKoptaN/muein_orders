import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/notification_entity.dart';
part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.loading() = _Loading;
  const factory NotificationsState.loaded({
    required List<AppNotification> notifications,
    required bool hasMore,
  }) = _Loaded;
  const factory NotificationsState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
