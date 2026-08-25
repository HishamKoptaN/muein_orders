part of 'location_picker_bloc.dart';

@freezed
abstract class LocationPickerEvent with _$LocationPickerEvent {
  const factory LocationPickerEvent.checkClipboard() = _CheckClipboard;
  const factory LocationPickerEvent.pasteFromClipboardEvent() =
      _PasteFromClipboardEvent;
}
