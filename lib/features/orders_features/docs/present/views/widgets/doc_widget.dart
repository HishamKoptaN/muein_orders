import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../l10n/app_localizations.dart';
import '../../../../orders/domain/entities/orders_res_entity.dart';
import '../../../../salla_orders_items/domain/entities/salla_order_items_res_entity.dart';
import 'preview/image_preview.dart';
import 'preview/video_widget.dart';

class DocWidget extends StatelessWidget {
  const DocWidget({super.key, required this.orderEntity});
  final SallaOrderItemUnitEntity? orderEntity;
  static const String routeName = 'DocWidget';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // final lat = orderEntity?.latitude;
        // final lng = orderEntity?.longitude;
        // if (lat != null && lng != null) {
        //   final uri = Uri.parse(
        //     'https://www.google.com/maps/search/?api=1&query=$lat,$lng',
        //   );
        //   if (await canLaunchUrl(uri)) {
        //     await launchUrl(uri, mode: LaunchMode.externalApplication);
        //   } else {}
        // }
      },
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Expanded(
                  //   flex: 2,
                  //   child: VideoWidget(
                  //     videoUrl: orderEntity?.videoOne ?? '',
                  //     thumbnailUrl: orderEntity?.thumbnailUrlOne ?? '',
                  //   ),
                  // ),
                  // Expanded(
                  //   flex: 2,
                  //   child: VideoWidget(
                  //     videoUrl: orderEntity?.videoTwo ?? '',
                  //     thumbnailUrl: orderEntity?.thumbnailUrlTwo ?? '',
                  //   ),
                  // ),
                  // Expanded(
                  //   flex: 2,
                  //   child: GestureDetector(
                  //     onTap: () async {
                  //       await Navigator.pushNamed(
                  //         context,
                  //         ImagePreview.routeName,
                  //         arguments: {'image_url': orderEntity?.imageOne ?? ''},
                  //       );
                  //     },
                  //     child: Image.network(
                  //       orderEntity?.imageOne ?? '',
                  //       fit: BoxFit.cover,
                  //       loadingBuilder: (context, child, loadingProgress) {
                  //         if (loadingProgress == null) return child;
                  //         return SizedBox();
                  //       },
                  //       errorBuilder: (context, error, stackTrace) {
                  //         return const Icon(
                  //           Icons.broken_image,
                  //           size: 50,
                  //           color: Colors.grey,
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // ),
                  // Expanded(
                  //   flex: 2,
                  //   child: GestureDetector(
                  //     onTap: () async {
                  //       Navigator.pushNamed(
                  //         context,
                  //         ImagePreview.routeName,
                  //         arguments: {'image_url': orderEntity?.imageTwo ?? ''},
                  //       );
                  //     },
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(12.0),
                  //       child: Image.network(
                  //         orderEntity?.imageTwo ?? '',
                  //         fit: BoxFit.cover,
                  //         width: double.infinity,
                  //         height: double.infinity,
                  //         loadingBuilder: (context, child, loadingProgress) {
                  //           if (loadingProgress == null) return child;
                  //           return SizedBox();
                  //         },
                  //         errorBuilder: (context, error, stackTrace) {
                  //           return Container(
                  //             width: double.infinity,
                  //             height: double.infinity,
                  //             color: Colors.grey.shade200,
                  //             child: const Icon(
                  //               Icons.broken_image,
                  //               size: 50,
                  //               color: Colors.grey,
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
