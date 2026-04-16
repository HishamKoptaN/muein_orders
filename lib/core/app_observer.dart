import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/app_logger.dart';

/// Bloc Observer مركزي لتتبع جميع أحداث وأخطاء Bloc
class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    AppLogger.debug('🆕 Bloc Created: ${bloc.runtimeType}', tag: 'BLOC');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    AppLogger.debug(
      '🔄 ${bloc.runtimeType}: ${transition.event.runtimeType} → ${transition.nextState.runtimeType}',
      tag: 'BLOC',
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    AppLogger.debug(
      '📢 ${bloc.runtimeType}: Event ${event.runtimeType}',
      tag: 'BLOC_EVENT',
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    AppLogger.debug(
      '📊 ${bloc.runtimeType}: ${change.currentState.runtimeType} → ${change.nextState.runtimeType}',
      tag: 'BLOC_STATE',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    AppLogger.error(
      '❌ Bloc Error in ${bloc.runtimeType}',
      tag: 'BLOC_ERROR',
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    AppLogger.debug('🗑️ Bloc Closed: ${bloc.runtimeType}', tag: 'BLOC');
  }
}
