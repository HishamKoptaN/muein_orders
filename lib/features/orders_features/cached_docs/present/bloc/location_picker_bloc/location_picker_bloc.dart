import 'package:error_handler/error_handler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../../core/utils/coordinate_parser.dart';
import '../../../domain/usecases/cached_docs_use_cases.dart';
part 'location_picker_bloc.freezed.dart';
part 'location_picker_event.dart';
part 'location_picker_state.dart';

@lazySingleton
class LocationPickerBloc
    extends Bloc<LocationPickerEvent, LocationPickerState> {
  final CachedDocsUseCases cachedDocsUseCases;
  LocationPickerBloc(this.cachedDocsUseCases)
    : super(const LocationPickerState.initial()) {
    on<LocationPickerEvent>((event, emit) async {
      await event.when(
        checkClipboard: () async {
          try {
            await Clipboard.getData('text/plain').then((data) {
              final text = data?.text?.trim();
              if (text == null || text.isEmpty) {
                final coordinates = CoordinateParser.parse(text ?? '');
                emit(
                  LocationPickerState.loaded(
                    pastedLocation: coordinates,
                    hasValidClipboardLocation: coordinates != null,
                  ),
                );
              }
            });
          } catch (e) {
            emit(
              LocationPickerState.failure(
                errorInfo: ErrorHandler.handle(error: e),
              ),
            );
          }
        },
        pasteFromClipboardEvent: () {},
      );
    });
  }
  // bool _isSameLocation(LatLng a, LatLng b) {
  //   const tolerance = 0.0001;
  //   return (a.latitude - b.latitude).abs() < tolerance &&
  //       (a.longitude - b.longitude).abs() < tolerance;
  // }

  LatLng? _parseCoordinates(String text) {
    final cleaned = text.trim().replaceAll(RegExp(r'[\s]+'), ' ');
    final regex = RegExp(r'^(-?\d+\.?\d*)[,\s]+(-?\d+\.?\d*)$');
    final match = regex.firstMatch(cleaned);
    if (match != null) {
      final lat = double.tryParse(match.group(1)!);
      final lng = double.tryParse(match.group(2)!);
      if (lat != null && lng != null) {
        if (lat >= -90 && lat <= 90 && lng >= -180 && lng <= 180) {
          return LatLng(lat, lng);
        }
      }
    }

    return null;
  }

  Future<void> _pasteLocationFromClipboard() async {
    try {
      // final String? clipboardData = await Clipboard.getData(
      //   'text/plain',
      // ).then((data) => data?.text);
      // if (clipboardData == null || clipboardData.isEmpty) {
      //   // if (mounted) {
      //   //   ScaffoldMessenger.of(
      //   //     context,
      //   //   ).showSnackBar(const SnackBar(content: Text('الحافظة فارغة')));
      //   // }
      //   return;
      // }
      // final LatLng? parsedLocation = _parseCoordinates(clipboardData);
      // if (parsedLocation != null) {
      //   setState(() {
      //     // _selectedPoint = parsedLocation;
      //     _hasValidCoordsInClipboard = false;
      //   });
      //   _updateCoordsText();
      //   // _mapController.move(parsedLocation, 15.0);
      //   if (mounted) {
      //     ScaffoldMessenger.of(
      //       context,
      //     ).showSnackBar(const SnackBar(content: Text('تم لصق الموقع')));
      //   }
      // } else {
      //   if (mounted) {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(
      //         content: Text('تنسيق الموقع غير صحيح. المتوقع: 24.7136, 46.6753'),
      //       ),
      //     );
      //   }
      // }
    } catch (e) {
      // if (mounted) {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('خطأ في القراءة من الحافظة: $e')),
      //   );
      // }
    }
  }

  Future<void> _checkClipboardForCoordinates() async {
    try {
      // final clipboardData = await Clipboard.getData('text/plain');
      // if (clipboardData?.text != null) {
      //   final hasValid = _parseCoordinates(clipboardData!.text!) != null;
      //   if (hasValid != _hasValidCoordsInClipboard) {
      //     setState(() {
      //       _hasValidCoordsInClipboard = hasValid;
      //     });
      //   }
      // }
    } catch (_) {}
  }

  void _updateCoordsText() {
    // _coordsController.text =
    //     '${widget.doc.location.latitude}, ${widget.doc.location.longitude}';
  }

  Future<void> setText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
