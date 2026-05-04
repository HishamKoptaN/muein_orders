part of 'location_picker_bloc.dart';

class LocationPickerState extends Equatable {
  final bool hasValidClipboardLocation;
  final LatLng? pastedLocation;

  const LocationPickerState({
    this.hasValidClipboardLocation = false,
    this.pastedLocation,
  });

  LocationPickerState copyWith({
    bool? hasValidClipboardLocation,
    LatLng? pastedLocation,
  }) {
    return LocationPickerState(
      hasValidClipboardLocation:
          hasValidClipboardLocation ?? this.hasValidClipboardLocation,
      pastedLocation: pastedLocation,
    );
  }

  @override
  List<Object?> get props => [hasValidClipboardLocation, pastedLocation];
}
