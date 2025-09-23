
//  await showDialog(
//     context: context,
//     builder:
//         (BuildContext
//             context) {
//       return AlertDialog(
//         content: Column(
//           mainAxisSize:
//               MainAxisSize
//                   .min,
//           children: [
//             IconsOutlineButton(
//               onPressed:
//                   () async {
//                 Navigator.of(context)
//                     .pop();
//                 Navigator
//                     .push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) =>
//                         AddDocView(orderId: order.id ?? 0),
//                   ),
//                 );
//               },
//               text: t
//                   .add_documentation,
//               iconData:
//                   CupertinoIcons
//                       .add_circled_solid,
//               color: AppColors
//                   .greenColor,
//               textStyle:
//                   const TextStyle(
//                       color: Colors.white),
//               iconColor:
//                   Colors
//                       .white,
//             ),
//             const SizedBox(
//                 height:
//                     10),
//             IconsOutlineButton(
//               onPressed:
//                   () async {
//                 Navigator.of(context)
//                     .pop();
//                 Navigator
//                     .push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) =>
//                         DocsView(orderId: order.id ?? 0),
//                   ),
//                 );
//               },
//               text: t
//                   .show_documentations,
//               iconData:
//                   CupertinoIcons
//                       .photo_on_rectangle,
//               color: AppColors
//                   .greenColor,
//               textStyle:
//                   const TextStyle(
//                       color: Colors.white),
//               iconColor:
//                   Colors
//                       .white,
//             ),
//           ],
//         ),
//       );
//     },
//   );
