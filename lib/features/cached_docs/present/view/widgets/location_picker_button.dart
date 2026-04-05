import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/translated_text.dart';
import '../../../data/datasources/local/drift/cached_docs_table.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../bloc/cached_doc_bloc.dart';
import 'add_file_widget.dart';
import 'pick_location_view.dart';

class LocationPickerButton extends StatelessWidget {
  const LocationPickerButton({super.key, required this.loaded});
  final Loaded loaded;
  @override
  Widget build(BuildContext context) {
    final hasLocation =
        loaded.createCachedDoc.location?.latitude != null &&
        loaded.createCachedDoc.location?.longitude != null;
    final locationText = hasLocation
        ? '${loaded.createCachedDoc.location?.latitude}, ${loaded.createCachedDoc.location?.longitude}'
        : 'اختر الموقع';
    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            final LatLng? result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PickLocationView()),
            );
            if (result != null) {
              final lat = result.latitude.toString();
              final lng = result.longitude.toString();
              getIt<CachedDocBloc>().add(
                CachedDocEvent.updateData(
                  createCachedDoc: loaded.createCachedDoc.copyWith(
                    location: LocationEntity(
                      latitude: double.parse(lat),
                      longitude: double.parse(lng),
                    ),
                  ),
                  loaded: loaded,
                  subCategoryId: loaded.subCategoryId ?? 1,
                ),
              );
            }
          },
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
                      loaded.createCachedDoc.location?.status ??
                      FileUploadStatus.pending,
                ),
              ),
            ],
          ),
        ),
        Expanded(
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
                      color: hasLocation
                          ? Colors.black
                          : const Color(0xFFBABABA),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
