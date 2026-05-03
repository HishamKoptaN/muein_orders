import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/widgets/translated_text.dart';
import 'location_service.dart';

class PickLocationView extends StatefulWidget {
  const PickLocationView({super.key});
  static const String routeName = 'pick-location';

  @override
  State<PickLocationView> createState() => _PickLocationViewState();
}

class _PickLocationViewState extends State<PickLocationView> {
  final MapController _mapController = MapController();
  LatLng _selectedPoint = const LatLng(24.7136, 46.6753);
  bool _isLoadingLocation = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _determinePosition();
    });
  }

  Future<void> _determinePosition() async {
    setState(() {
      _isLoadingLocation = true;
    });

    final LatLng? currentLatLng = await LocationService.determinePosition(
      context,
    );

    setState(() {
      _isLoadingLocation = false;
    });

    if (currentLatLng != null) {
      setState(() {
        _selectedPoint = currentLatLng;
      });
      _mapController.move(currentLatLng, 15.0);
    }
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
          if (_isLoadingLocation)
            Container(
              color: Colors.black54,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: Colors.white),
                    SizedBox(height: 16),
                    Text(
                      'جاري تحديد موقعك...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
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
