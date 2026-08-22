import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/widgets/translated_text.dart';
import '../../../data/datasources/local_data_src/drift/tables/docs_table.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../bloc/cached_doc_bloc.dart';
import '../../bloc/location_picker_bloc/location_picker_bloc.dart';
import 'add_file_widget.dart';
import 'pick_location_view.dart';

/// Location picker widget with clipboard paste functionality.
///
/// Uses dedicated [LocationPickerBloc] for clipboard operations
/// and communicates with [CachedDocBloc] for location updates.
class LocationPickerButton extends StatefulWidget {
  const LocationPickerButton({super.key, required this.loaded});
  final Loaded loaded;

  @override
  State<LocationPickerButton> createState() => _LocationPickerButtonState();
}

class _LocationPickerButtonState extends State<LocationPickerButton>
    with WidgetsBindingObserver {
  late final LocationPickerBloc _bloc;

  LatLng? get _currentLocation {
    final loc = widget.loaded.createCachedDoc.location;
    if (loc?.latitude != null && loc?.longitude != null) {
      return LatLng(loc!.latitude!, loc.longitude!);
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _bloc = getIt<LocationPickerBloc>();
    _checkClipboard();
  }

  void _checkClipboard() {
    _bloc.add(CheckClipboardEvent(currentLocation: _currentLocation));
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkClipboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasLocation =
        widget.loaded.createCachedDoc.location?.latitude != null &&
        widget.loaded.createCachedDoc.location?.longitude != null;
    final locationText = hasLocation
        ? '${widget.loaded.createCachedDoc.location?.latitude}, ${widget.loaded.createCachedDoc.location?.longitude}'
        : 'اختر الموقع';

    return BlocListener<LocationPickerBloc, LocationPickerState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.pastedLocation != null) {
          getIt<CachedDocBloc>().add(
            CachedDocEvent.updateData(
              createCachedDoc: widget.loaded.createCachedDoc.copyWith(
                location: LocationEntity(
                  latitude: state.pastedLocation!.latitude,
                  longitude: state.pastedLocation!.longitude,
                ),
              ),
              loaded: widget.loaded,
              subCategoryId: widget.loaded.subCategoryId ?? 1,
            ),
          );
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('تم لصق الموقع')));
        }
      },
      child: BlocBuilder<LocationPickerBloc, LocationPickerState>(
        bloc: _bloc,
        builder: (context, state) {
          return Row(
            children: [
              _buildMapPickerButton(context),
              _buildLocationDisplay(context, hasLocation, locationText, state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMapPickerButton(BuildContext context) {
    return GestureDetector(
      onTap: () => _openMapPicker(context),
      child: Stack(
        children: [
          Container(
            height: 85.h,
            width: 110.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(15),
                bottomStart: Radius.circular(15),
                topEnd: Radius.zero,
                bottomEnd: Radius.zero,
              ),
              color: Color(0xFF013B46),
            ),
            alignment: Alignment.center,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.white, size: 18),
                SizedBox(width: 4),
                TrText(
                  'اختر',
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned.directional(
            textDirection: Directionality.of(context),
            top: 8,
            start: 8,
            child: buildStatusIndicator(
              docFileStatus:
                  widget.loaded.createCachedDoc.location?.fileUploadStatus ??
                  UploadStatus.init,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationDisplay(
    BuildContext context,
    bool hasLocation,
    String locationText,
    LocationPickerState pickerState,
  ) {
    return Expanded(
      child: Container(
        height: 85.h,
        decoration: BoxDecoration(
          color: hasLocation
              ? Colors.green.withOpacity(0.1)
              : Colors.grey.withOpacity(0.2),
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.zero,
            bottomStart: Radius.zero,
            topEnd: Radius.circular(15),
            bottomEnd: Radius.circular(15),
          ),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TrText(
                locationText,
                style: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 16,
                  color: hasLocation ? Colors.black : const Color(0xFFBABABA),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            if (pickerState.hasValidClipboardLocation)
              IconButton(
                icon: Icon(
                  Icons.paste,
                  color: Theme.of(context).primaryColor,
                  size: 22,
                ),
                onPressed: () => _bloc.add(PasteFromClipboardEvent()),
                tooltip: 'لصق من الحافظة',
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _openMapPicker(BuildContext context) async {
    final LatLng? result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const PickLocationView()),
    );
    if (result != null && context.mounted) {
      getIt<CachedDocBloc>().add(
        CachedDocEvent.updateData(
          createCachedDoc: widget.loaded.createCachedDoc.copyWith(
            location: LocationEntity(
              latitude: result.latitude,
              longitude: result.longitude,
            ),
          ),
          loaded: widget.loaded,
          subCategoryId: widget.loaded.subCategoryId ?? 1,
        ),
      );
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _bloc.close();
    super.dispose();
  }
}
