// import 'package:flutter/material.dart';

// import '../../../../../l10n/app_localizations.dart';

// /// عنصر رسالة بسيطة
// Widget _buildMessage({
//   required Key key,
//   required String text,
// }) {
//   return Text(
//     text,
//     style: const TextStyle(
//       color: Color(0xFF757575),
//     ),
//   );
// }

// /// واجهة القبول/التوثيق الناجح
// Widget _buildAcceptedWidget({
//   required String status,
//   required AppLocalizations t,
//   required Color statusColor,
// }) {
//   return Container(
//     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//     decoration: BoxDecoration(
//       color: const Color(0xFFFFF3E0),
//       borderRadius: BorderRadius.circular(20),
//       border: Border.all(color: const Color(0xFFFFCC02)),
//     ),
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           status,
//           style: TextStyle(fontSize: 15, color: statusColor),
//         ),
//         const SizedBox(width: 6),
//         Container(
//           width: 13,
//           height: 13,
//           decoration: BoxDecoration(
//             color: statusColor,
//             shape: BoxShape.circle,
//           ),
//         ),
//       ],
//     ),
//   );
// }
