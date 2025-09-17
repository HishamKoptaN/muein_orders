import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/usecases/notifications_use_cases.dart';
import 'notifications_event.dart';
import 'notifications_state.dart';

@injectable
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final NotificationsUseCases useCases;
  final List<AppNotification> _notifications = [];
  final int _page = 0;
  final bool _hasMore = true;

  NotificationsBloc(this.useCases) : super(const NotificationsState.initial()) {
    on<NotificationsEvent>(
      (event, emit) async {
        await event.when(
          getNotifications: (getMore) async {
            try {
              if (!getMore) emit(const NotificationsState.loading());
              final nextPage = getMore ? _page + 1 : 1;
              final res = await useCases.getNotifications(page: nextPage);
              // await res.when(
              //   success: (data) async {
              //     final items = data;
              //     if (!getMore) {
              //       _notifications = items!;
              //     } else {
              //       _notifications = [..._notifications, ...items!];
              //     }
              //     _page = nextPage;
              //     // If API doesn't return meta, infer hasMore by non-empty page
              //     _hasMore = items.isNotEmpty;
              //     emit(NotificationsState.loaded(
              //       notifications: _notifications,
              //       hasMore: _hasMore,
              //     ));
              //   },
              //   failure: (apiErrorModel) async {
              //     emit(
              //         NotificationsState.failure(apiErrorModel: apiErrorModel));
              //   },
              // );
            } catch (e) {
              emit(
                NotificationsState.failure(
                  apiErrorModel: ApiErrorModel(error: e.toString()),
                ),
              );
            }
          },
          markAsRead: (id) async {
            // optimistic update
            final idx = _notifications.indexWhere((n) => n.id == id);
            if (idx != -1) {
              final updated = _notifications[idx].copyWith(read: true);
              _notifications[idx] = updated;
              emit(
                NotificationsState.loaded(
                  notifications: _notifications,
                  hasMore: _hasMore,
                ),
              );
            }
            final res = await useCases.markAsRead(id: id);
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
      },
    );
  }
}
