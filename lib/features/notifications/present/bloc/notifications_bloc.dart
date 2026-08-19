import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/usecases/notifications_use_cases.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

@singleton
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final NotificationsUseCases useCases;
  NotificationsBloc(this.useCases) : super(const NotificationsState.initial()) {
    on<NotificationsEvent>((event, emit) async {
      await event.when(
        getNotifications: (getMore) async {
          try {
            if (!getMore) emit(const NotificationsState.loading());
            final res = await useCases.getNotifications();
            await res.when(
              success: (data) async {
                emit(NotificationsState.loaded(notifications: data ?? []));
              },
              failure: (apiErrorModel) async {
                emit(NotificationsState.failure(apiErrorModel: apiErrorModel));
              },
            );
          } catch (e) {
            emit(
              NotificationsState.failure(
                apiErrorModel: ErrorInfo(message: e.toString()),
              ),
            );
          }
        },
        markAsRead: (id) async {
          // final idx = _notifications.indexWhere((n) => n.id == id);
          // if (idx != -1) {
          //   final updated = _notifications[idx].copyWith(read: true);
          //   _notifications[idx] = updated;
          //   emit(
          //     NotificationsState.loaded(
          //       notifications: _notifications,
          //       hasMore: _hasMore,
          //     ),
          //   );
          // }
          // final res = await useCases.markAsRead(id: id);
          // await res.when(
          //   success: (_) async {},
          //   failure: (apiErrorModel) async {
          //     // revert if failed
          //     if (idx != -1) {
          //       _notifications[idx] =
          //           _notifications[idx].copyWith(read: false);
          //       emit(NotificationsState.loaded(
          //         notifications: _notifications,
          //         hasMore: _hasMore,
          //       ),);
          //     }
          //   },
          // );
        },
      );
    });
  }
}
