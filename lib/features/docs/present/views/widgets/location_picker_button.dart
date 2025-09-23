import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../blocs/bloc/docs_bloc.dart';
import 'pick_location_view.dart';

class LocationPickerButton extends StatelessWidget {
  const LocationPickerButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              t.selectLocation,
              style: const TextStyle(
                fontFamily: 'Almarai',
                fontSize: 16,
                color: Color(0xFFBABABA),
              ),
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
              context.read<DocsBloc>().add(
                    DocsEvent.updateLocation(
                      latitude: lat,
                      longitude: lng,
                    ),
                  );
            }
          },
          child: Container(
            height: 60,
            width: 95,
            decoration: const BoxDecoration(
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
