// import 'package:country_picker/country_picker.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../../../../core/all_imports.dart';
// import '../../../../../core/utils/date_formatter.dart';
// import '../../../../../core/widgets/custom_data_cell_widget.dart';
// import '../../../../../core/widgets/custom_icon_button.dart';
// import '../../../domain/entities/client_entity.dart';
// import '../../bloc/clients_bloc.dart';
// import '../../bloc/clients_event.dart';
// import '../clients_view.dart';

// DataRow buildClientRow(
//     {required ClientEntity client, required BuildContext context}) {
//   void changeFiledValue(
//       {required int id, required String fieldName, required bool v}) {
//     context.read<ClientsBloc>().add(
//           ClientsEvent.updateClientField(
//             clientId: id,
//             fieldName: fieldName,
//             newValue: !v,
//           ),
//         );
//   }
//   return DataRow(
//     cells: [
//       customDataCell(text: client.name ?? ''),
//       customDataCell(text: client.printedName ?? ''),
//       customDataCell(text: client.executionNum ?? ''),
//       customDataCell(text: client.orderNum ?? ''),
//       customDataCell(text: client.quranCopiesCount.toString()),
//       customDataCell(text: client.cartonCount.toString()),
//       customDataCell(text: client.ordersCount.toString()),
//       customDataCell(text: client.totalAmount ?? ''),
//       customDataCell(
//         text: formatDate(date: client.orderDate ?? DateTime(2025)),
//       ),
//       customDataCell(text: client.days.toString()),
//       customDataCell(
//         text: CountryLocalizations.of(context)
//                 ?.countryName(countryCode: client.country ?? '') ??
//             client.country ??
//             '',
//       ),
//       DataCell(
//         Container(
//           width: double.infinity,
//           padding: const EdgeInsets.all(4),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   client.phone ?? '',
//                   softWrap: true,
//                   overflow: TextOverflow.visible,
//                   maxLines: 3,
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                   ),
//                 ),
//               ),
//               IconButton(
//                 onPressed: () async {
//                   final url = Uri.parse("tel:${client.phone}");
//                   if (!await launchUrl(url)) {
//                     throw 'Could not make phone call';
//                   }
//                 },
//                 icon: const Icon(Icons.phone, color: Colors.green),
//                 tooltip: 'اتصال',
//               ),
//             ],
//           ),
//         ),
//       ),
//       DataCell(
//         IconButton(
//           icon: const FaIcon(FontAwesomeIcons.whatsapp),
//           color: Colors.green,
//           onPressed: () async {
//             final url = Uri.parse("https://wa.me/${client.phone}");
//             if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
//               throw 'Could not launch WhatsApp';
//             }
//           },
//         ),
//       ),
//       customDataCell(text: client.email ?? ''),
//       DataCell(
//         Checkbox(
//           value: client.printQuran ?? false,
//           onChanged: (v) async {
//             changeFiledValue(
//                 id: client.id ?? 0, fieldName: 'printQuran', v: !v!);
//           },
//         ),
//       ),
//       DataCell(
//         Checkbox(
//           value: client.isQuranPhotographed ?? false,
//           onChanged: (v) {
//             changeFiledValue(
//                 id: client.id ?? 0, fieldName: 'captureQuran', v: !v!);
//           },
//         ),
//       ),
//       DataCell(
//         Checkbox(
//           value: client.isDistributionPhotographed ?? false,
//           onChanged: (v) {
//             changeFiledValue(
//                 id: client.id ?? 0,
//                 fieldName: 'isDistributionCaptured',
//                 v: !v!);
//           },
//         ),
//       ),
//       DataCell(
//         Checkbox(
//           value: client.isReceivedLocation ?? false,
//           onChanged: (v) {
//             changeFiledValue(
//                 id: client.id ?? 0, fieldName: 'isReceivedLocation', v: !v!);
//           },
//         ),
//       ),
//       DataCell(
//         Checkbox(
//           value: client.locationLink ?? false,
//           onChanged: (v) {
//             changeFiledValue(
//                 id: client.id ?? 0, fieldName: 'locationLink', v: !v!);
//           },
//         ),
//       ),
//       DataCell(
//         Checkbox(
//           value: client.finalEstimateReady ?? false,
//           onChanged: (v) {
//             changeFiledValue(
//                 id: client.id ?? 0, fieldName: 'finalEstimateReady', v: !v!);
//           },
//         ),
//       ),
//       DataCell(
//         Checkbox(
//           value: client.sendReport ?? false,
//           onChanged: (v) {
//             changeFiledValue(
//                 id: client.id ?? 0, fieldName: 'sendReport', v: v ?? false);
//           },
//         ),
//       ),
//       DataCell(
//         Row(
//           children: [
//             CustomIconButtonWidget(
//               onTap: () {
//                 shareClientLinkOnWhatsApp(
//                   clientId: client.id ?? 0,
//                 );
//               },
//               icon: const Icon(
//                 Icons.share,
//                 color: Colors.green,
//               ),
//             ),
//             Gap(10.w),
//             CustomIconButtonWidget(
//               onTap: () async {
//                 final link =
//                     'https://live90.fr/mubin_orders/?client_id=${client.id}';
//                 await Clipboard.setData(ClipboardData(text: link));
//                 Fluttertoast.showToast(msg: 'تم نسخ الرابط');
//               },
//               icon: const Icon(Icons.copy, color: Colors.green),
//             ),
//             // CustomButtonWidget(
//             //   width: 125.w,
//             //   onPressed: () {
//             //       Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //       builder: (context) => OrdersView(
//             //         clientId: client.id ?? 0,
//             //       ),
//             //     ),
//             //   );
//             //   },
//             //   text: 'عرض',
//             // ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
