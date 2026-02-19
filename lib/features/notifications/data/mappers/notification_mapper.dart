import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/notification_entity.dart';
import '../models/notification_model.dart';

extension NotificationModelMapper on NotificationModel {
  NotificationEntity toEntity() {
    return NotificationEntity(
      id: id.toString(),
      title: title ?? '',
      body: body ?? '',
      createdAt: formatDate(dateTime: createdAt ?? ''),
    );
  }
}
