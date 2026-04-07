import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/widgets/translated_text.dart';

class PickLocationView extends StatefulWidget {
  const PickLocationView({super.key});

  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  final MapController _mapController = MapController();
  LatLng _selectedPoint = const LatLng(24.7136, 46.6753);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _determinePosition();
    });
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: TrText('خدمة الموقع معطلة، يرجى تفعيلها')),
      );
      return;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }
    if (permission == LocationPermission.deniedForever) return;
    final Position position = await Geolocator.getCurrentPosition();
    final LatLng currentLatLng = LatLng(position.latitude, position.longitude);
    setState(() {
      _selectedPoint = currentLatLng;
    });
    _mapController.move(currentLatLng, 15.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TrText('اختر موقع التوزيع'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _selectedPoint,
              initialZoom: 13.0,
              onTap: (tapPosition, point) {
                setState(() {
                  _selectedPoint = point;
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.muein.orders',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: _selectedPoint,
                    width: 80,
                    height: 80,
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Gap(20.w),
          FloatingActionButton.extended(
            backgroundColor: Colors.white,
            onPressed: _determinePosition,
            label: const TrText('تحديد موقعي'),
            icon: const Icon(Icons.my_location, color: Colors.red),
          ),
          Gap(20.w),
          FloatingActionButton.extended(
            label: const TrText('تأكيد الموقع'),
            icon: const Icon(Icons.check),
            onPressed: () {
              Navigator.pop(
                context,
                LatLng(_selectedPoint.latitude, _selectedPoint.longitude),
              );
            },
          ),
        ],
      ),
    );
  }
}
