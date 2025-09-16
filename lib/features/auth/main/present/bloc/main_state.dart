part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.loading() = _LoadInProgress;
  const factory MainState.logedIn() = _LogedIn;
  const factory MainState.firstTime() = _FirstTime;
  const factory MainState.logedOut() = _LogedOut;
  const factory MainState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
