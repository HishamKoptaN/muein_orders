part of 'location_picker_bloc.dart';

@freezed
abstract class LocationPickerState with _$LocationPickerState {
  const factory LocationPickerState.initial() = _Initial;
  const factory LocationPickerState.loading() = _Loading;
  const factory LocationPickerState.loaded({
    @Default(false) bool hasValidClipboardLocation,
    @Default(null) LatLng? pastedLocation,
  }) = _Loaded;
  const factory LocationPickerState.failure({
    required ErrorInfo apiErrorModel,
  }) = _Failure;
}
