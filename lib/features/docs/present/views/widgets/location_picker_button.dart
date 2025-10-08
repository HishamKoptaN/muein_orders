import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../../../home/domain/entities/order_type_res_entity.dart';
import '../../blocs/cached_doc/cached_doc_bloc.dart';
import 'pick_location_view.dart';

class LocationPickerButton extends StatelessWidget {
  const LocationPickerButton({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.package,
  });
  final GenericFormzInput<double>? latitude;
  final GenericFormzInput<double>? longitude;
  final PackageEntity package;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final hasLocation = latitude?.value != null && longitude?.value != null;
    final locationText = hasLocation
        ? '${latitude?.value}, ${longitude?.value}'
        : t.selectLocation;
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60.h,
            decoration: BoxDecoration(
              color: hasLocation
                  ? Colors.green.withOpacity(0.1)
                  : Colors.grey.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.zero,
                bottomLeft: Radius.zero,
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    locationText,
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      color:
                          hasLocation ? Colors.black : const Color(0xFFBABABA),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                if (hasLocation)
                  const Icon(Icons.check_circle, color: Colors.green),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            final LatLng? result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const PickLocationView(),
              ),
            );
            if (result != null) {
              final lat = result.latitude.toString();
              final lng = result.longitude.toString();
              context.read<CachedDocBloc>().add(
                    CachedDocEvent.updateData(
                      latitude: GenericFormzInput.dirty(double.parse(lat)),
                      longitude: GenericFormzInput.dirty(double.parse(lng)),
                      package: package,
                    ),
                  );
            }
          },
          child: Container(
            height: 60.h,
            width: 95.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                topRight: Radius.zero,
                bottomRight: Radius.zero,
              ),
              color: Color(0xFF013B46),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  t.select,
                  style: const TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
