part of 'location_picker_bloc.dart';

abstract class LocationPickerEvent extends Equatable {
  const LocationPickerEvent();

  @override
  List<Object?> get props => [];
}

class CheckClipboardEvent extends LocationPickerEvent {
  final LatLng? currentLocation;

  const CheckClipboardEvent({this.currentLocation});

  @override
  List<Object?> get props => [currentLocation];
}

class PasteFromClipboardEvent extends LocationPickerEvent {}
