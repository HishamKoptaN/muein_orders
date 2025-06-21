import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

Widget buildColumnHeader({required String label, required int flex}) {
  return Flexible(
    flex: flex,
    fit: FlexFit.tight,
    child: Text(
      label,
      style: TextStyles.bold18,
    ),
  );
}

Widget buildTransactionDetail({
  required String text,
  bool? isPrice = false,
}) {
  return Text(
    text,
    style: TextStyles.bold14,
  );
}
