import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../../core/widgets/translated_text.dart';
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
      // _updateCoordsText();
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
      body: Column(
        children: [
          // حقل الإحداثيات مع أيقونة اللصق
          // Container(
          //   margin: EdgeInsets.all(12.w),
          //   child: TextField(
          //     controller: _coordsController,
          //     readOnly: true,
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 14.sp,
          //       fontWeight: FontWeight.w500,
          //       fontFamily: 'Almarai',
          //     ),
          //     decoration: InputDecoration(
          //       hintText: 'الإحداثيات',
          //       prefixIcon: _hasValidCoordsInClipboard
          //           ? IconButton(
          //               icon: Icon(
          //                 Icons.paste,
          //                 color: Theme.of(context).primaryColor,
          //               ),
          //               onPressed: _pasteLocationFromClipboard,
          //               tooltip: 'لصق من الحافظة',
          //             )
          //           : null,
          //       suffixIcon: IconButton(
          //         icon: const Icon(Icons.content_copy, size: 20),
          //         onPressed: () {
          //           Clipboard.setData(
          //             ClipboardData(text: _coordsController.text),
          //           );
          //           ScaffoldMessenger.of(context).showSnackBar(
          //             const SnackBar(content: Text('تم نسخ الإحداثيات')),
          //           );
          //         },
          //         tooltip: 'نسخ الإحداثيات',
          //       ),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(12.r),
          //         borderSide: BorderSide(color: Colors.grey.shade300),
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(12.r),
          //         borderSide: BorderSide(color: Colors.grey.shade300),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(12.r),
          //         borderSide: BorderSide(color: Theme.of(context).primaryColor),
          //       ),
          //       filled: true,
          //       fillColor: Colors.grey.shade50,
          //       contentPadding: EdgeInsets.symmetric(
          //         horizontal: 16.w,
          //         vertical: 14.h,
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: Stack(
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
                      // _updateCoordsText();
                    },
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
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
