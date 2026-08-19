import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../domain/usecases/paste_location_from_clipboard_usecase.dart';

part 'location_picker_event.dart';
part 'location_picker_state.dart';

@lazySingleton
class LocationPickerBloc
    extends Bloc<LocationPickerEvent, LocationPickerState> {
  final PasteLocationFromClipboardUseCase pasteUseCase;

  LocationPickerBloc(this.pasteUseCase) : super(const LocationPickerState()) {
    on<CheckClipboardEvent>(_onCheckClipboard);
    on<PasteFromClipboardEvent>(_onPasteFromClipboard);
  }

  Future<void> _onCheckClipboard(
    CheckClipboardEvent event,
    Emitter<LocationPickerState> emit,
  ) async {
    final result = await pasteUseCase();
    if (result is Success<LatLng?>) {
      final clipboardLocation = result.data;
      final currentLocation = event.currentLocation;

      // Show paste button if:
      // 1. Clipboard has valid coordinates AND field is empty
      // 2. Clipboard has valid coordinates AND different from current
      final shouldShowPaste =
          clipboardLocation != null &&
          (currentLocation == null ||
              !_isSameLocation(clipboardLocation, currentLocation));

      emit(state.copyWith(hasValidClipboardLocation: shouldShowPaste));
    } else {
      emit(state.copyWith(hasValidClipboardLocation: false));
    }
  }

  bool _isSameLocation(LatLng a, LatLng b) {
    // Compare with small tolerance for floating point precision
    const tolerance = 0.0001;
    return (a.latitude - b.latitude).abs() < tolerance &&
        (a.longitude - b.longitude).abs() < tolerance;
  }

  Future<void> _onPasteFromClipboard(
    PasteFromClipboardEvent event,
    Emitter<LocationPickerState> emit,
  ) async {
    final result = await pasteUseCase();
    if (result is Success<LatLng?>) {
      final location = result.data;
      if (location != null) {
        emit(
          state.copyWith(
            pastedLocation: location,
            hasValidClipboardLocation: false,
          ),
        );
      }
    }
  }
}
