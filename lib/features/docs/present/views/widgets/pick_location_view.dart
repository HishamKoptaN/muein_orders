import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickLocationView extends StatefulWidget {
  const PickLocationView({
    super.key,
  });
  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  LatLng? selectedLatLng;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'اختر الموقع',
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(
            24.7136,
            46.6753,
          ),
          zoom: 10,
        ),
        onTap: (
          LatLng latLng,
        ) {
          setState(
            () {
              selectedLatLng = latLng;
            },
          );
        },
        markers: selectedLatLng != null
            ? {
                Marker(
                  markerId: const MarkerId(
                    'selected',
                  ),
                  position: selectedLatLng!,
                ),
              }
            : {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedLatLng != null) {
            Navigator.pop(
              context,
              selectedLatLng,
            );
          }
        },
        child: const Icon(
          Icons.check,
        ),
      ),
    );
  }
}
