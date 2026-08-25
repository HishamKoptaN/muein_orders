import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs/generic_form_input.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../../../core/widgets/translated_text.dart';
import '../../../../domain/entities/create_cached_doc_entity.dart';
import '../../../bloc/cached_doc/cached_doc_bloc.dart';
import '../../../bloc/location_picker_bloc/location_picker_bloc.dart';
import '../file/add_file_widget.dart';
import 'pick_location_view.dart';

class LocationPickerButton extends StatefulWidget {
  const LocationPickerButton({super.key, required this.createCachedDoc});
  final CreateCachedDocEntity createCachedDoc;

  @override
  State<LocationPickerButton> createState() => _LocationPickerButtonState();
}

class _LocationPickerButtonState extends State<LocationPickerButton>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkClipboard();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkClipboard();
    }
  }

  void _checkClipboard() {
    getIt<LocationPickerBloc>().add(const LocationPickerEvent.checkClipboard());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasLocation =
        widget.createCachedDoc.latitude.value.isNotEmpty &&
        widget.createCachedDoc.longitude.value.isNotEmpty;
    final locationText = hasLocation
        ? '${widget.createCachedDoc.latitude.value}, ${widget.createCachedDoc.longitude.value}'
        : 'اختر الموقع';
    return BlocConsumer<LocationPickerBloc, LocationPickerState>(
      bloc: getIt<LocationPickerBloc>()
        ..add(const LocationPickerEvent.checkClipboard()),
      listener: (context, state) async {
        await state.mapOrNull(
          loaded: (state) {
            if (state.hasValidClipboardLocation) {
              context.showInfoSnackBar(
                title: 'يوجد موقع في الحافظة',
                message: 'اضغط على زر اللصق لإضافة الموقع',
              );
            }
          },
        );
      },
      builder: (context, state) {
        return Row(
          children: [
            _buildMapPickerButton(context: context),
            _buildLocationDisplay(
              context: context,
              hasValidClipboardLocation:
                  getIt<LocationPickerBloc>().state.mapOrNull(
                    loaded: (state) {
                      return state.hasValidClipboardLocation;
                    },
                  ) ??
                  false,
              locationText: locationText,
            ),
          ],
        );
      },
    );
  }

  Widget _buildMapPickerButton({required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        _openMapPicker(context);
      },
      child: Stack(
        children: [
          Container(
            height: 54.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: context.colorScheme.primary,
              borderRadius: BorderRadiusDirectional.only(
                topStart: .circular(6.r),
                bottomStart: .circular(6.r),
                topEnd: .zero,
                bottomEnd: .zero,
              ),
            ),
            alignment: .center,
            child: Row(
              mainAxisAlignment: .center,
              children: [
                TrText(
                  'اختر',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                    height: 3.5.h,
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: context.colorScheme.onPrimary,
                  size: 16.r,
                ),
              ],
            ),
          ),
          Positioned.directional(
            textDirection: Directionality.of(context),
            top: 4.h,
            start: 4.w,
            child: buildStatusIndicator(
              docFileStatus: widget.createCachedDoc.locationUploadStatus,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationDisplay({
    required BuildContext context,
    required bool hasValidClipboardLocation,
    required String locationText,
  }) {
    return Expanded(
      child: Container(
        height: 54.h,
        decoration: BoxDecoration(
          color: hasValidClipboardLocation
              ? Colors.green.withValues(alpha: 0.1)
              : Colors.grey.withValues(alpha: 0.2),
          borderRadius: BorderRadiusDirectional.only(
            topStart: .zero,
            bottomStart: .zero,
            topEnd: .circular(6.r),
            bottomEnd: .circular(6.r),
          ),
        ),
        alignment: .centerRight,
        padding: .symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Expanded(
              child: TrText(
                locationText,
                textAlign: .center,
                style: context.textTheme.bodyMedium,
              ),
            ),
            if (hasValidClipboardLocation)
              IconButton(
                icon: Icon(Icons.paste, size: 22.r),
                onPressed: () {
                  getIt<CachedDocBloc>().add(
                    CachedDocEvent.updateData(
                      createCachedDoc: widget.createCachedDoc.copyWith(
                        latitude: GenericFormInput.dirty(
                          value:
                              getIt<LocationPickerBloc>().state.mapOrNull(
                                loaded: (state) {
                                  return state.pastedLocation?.latitude
                                      .toString();
                                },
                              ) ??
                              widget.createCachedDoc.latitude.value,
                        ),
                        longitude: GenericFormInput.dirty(
                          value:
                              getIt<LocationPickerBloc>().state.mapOrNull(
                                loaded: (state) {
                                  return state.pastedLocation?.longitude
                                      .toString();
                                },
                              ) ??
                              widget.createCachedDoc.longitude.value,
                        ),
                      ),
                    ),
                  );
                },
                tooltip: 'لصق من الحافظة',
                padding: .zero,
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
      MaterialPageRoute(
        builder: (_) {
          return const PickLocationView();
        },
      ),
    );
    if (result != null && context.mounted) {
      getIt<CachedDocBloc>().add(
        CachedDocEvent.updateData(
          createCachedDoc: widget.createCachedDoc.copyWith(
            latitude: GenericFormInput.dirty(value: result.latitude.toString()),
            longitude: GenericFormInput.dirty(
              value: result.longitude.toString(),
            ),
          ),
        ),
      );
    }
  }
}
