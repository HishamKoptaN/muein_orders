import '../../domain/entities/notification_entity.dart';
import '../models/notification_model.dart';

extension NotificationModelMapper on NotificationModel {
  AppNotification toEntity() {
    return AppNotification(
      id: id,
      title: title,
      body: body,
      createdAt: createdAt,
      imageUrl: imageUrl,
      read: read,
    );
  }
}
