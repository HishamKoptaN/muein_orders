import 'package:flutter/material.dart';

import '../translated_text.dart';

Widget buildColumnHeader({required String label, required int flex}) {
  return Flexible(
    flex: flex,
    fit: FlexFit.tight,
    child: TrText(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 1.0,
        letterSpacing: 0.0,
        color: Colors.white,
      ),
    ),
  );
}

Widget buildTransactionDetail({required String text, bool? isPrice = false}) {
  return TrText(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 14,
      height: 1.0,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
  );
}
