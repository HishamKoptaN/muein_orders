import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

/// مراقب عام لجميع الـ BLoCs في التطبيق
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('🚀 Bloc Transition: $transition');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('🎯 Bloc Event: $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('🔄 Bloc State Change: $change');
  }
  
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('❌ Bloc Error', error: error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
    
    // يمكن تفعيل هذا الجزء إذا كنت تستخدم Firebase Crashlytics
    // FirebaseCrashlytics.instance
    //     .recordError(error, stackTrace, reason: 'Bloc Error');
  }
}
