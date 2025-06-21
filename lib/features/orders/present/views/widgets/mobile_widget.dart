// import '../../../../../core/gloabal_widgets/gloabal_widgets.dart';
// import '../../../../../l10n/app_localizations.dart';
// import '../../../data/models/client.dart';
// import '../../../data/models/clients_res_model.dart';

// class MobileHomeWidget extends StatelessWidget {
//   const MobileHomeWidget({
//     super.key,
//     required this.client,
//   });
//   final Client client;
//   static const String routeName = "MobileHomeWidget";

//   @override
//   Widget build(BuildContext context,
//   ) {
//     final t = AppLocalizations.of(context)!;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [   Expanded(
//                           flex: 1,
//                           child: MyText(
//                             fieldName: '${t.client_id}: ${client.id.toString()}',
//                             color: Colors.blue,
//                             fontSize: 15.sp,
//                           ),
//                         ),
               
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
              
               
              
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

  // Future<void> shareClientTwo(collection, clientId, location, context) async {
  //   Reference videoRef;
  //   Reference firstImageRef;
  //   Reference secondImageRef;
  //   try {
  //     final storageRef = FirebaseStorage.instance.ref();
  //     videoRef = storageRef.child("$collection/$clientId/video.mp4");
  //     firstImageRef = storageRef.child("$collection/$clientId/first_image.jpg");
  //     secondImageRef =
  //         storageRef.child("$collection/$clientId/second_image.jpg");
  //     final dir = await getApplicationDocumentsDirectory();
  //     final videoFile = File('${dir.path}/${videoRef.name}.mp4');
  //     final firstImagFile = File('${dir.path}/${firstImageRef.name}.jpg');
  //     final secondImageFile = File('${dir.path}/${secondImageRef.name}.jpg');
  //     await videoRef.writeToFile(videoFile);
  //     await firstImageRef.writeToFile(firstImagFile);
  //     await secondImageRef.writeToFile(secondImageFile);
  //     String clientLocation =
  //         "Check out place location:\nhttps://maps.google.com/?q=$location";
  //     await Share.shareFiles(
  //       [
  //         // videoFile.path,
  //         // firstImagFile.path,
  //         // secondImageFile.path,
  //       ],
  //       text: clientLocation,
  //     );
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print('Error occurred while downloading file: $e');
  //     }
  //   }
  // }


   // Expanded(
                //   flex: 1,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       // Expanded(
                //       //   flex: 1,
                //       //   child: GestureDetector(
                //       //     onTap: () async {
                //       //       await shareClientTwo(
                //       //         proId,
                //       //       );
                //       //     },
                //       //     child: Container(
                //       //       decoration: BoxDecoration(
                //       //         bclient: Bclient.all(color: Colors.green),
                //       //         bclientRadius: const BclientRadius.all(
                //       //           Radius.circular(50),
                //       //         ),
                //       //       ),
                //       //       child: const Icon(
                //       //         Icons.share,
                //       //         color: Colors.green,
                //       //       ),
                //       //     ),
                //       //   ),
                //       // ),
                //       Gap(
                //         10.w,
                //       ),
                //       Expanded(
                //         flex: 1,
                //         child: GestureDetectorWidget(
                //           onTap: () {
                //             // value.shareLocationOnWhatsApp(
                //             //     document['place_name'],
                //             //     document['client_location']
                //             // );
                //           },
                //           // document: document,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),