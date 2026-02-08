import 'package:flutter/material.dart';

Widget buildColumnHeader({required String label, required int flex}) {
  return Flexible(
    flex: flex,
    fit: FlexFit.tight,
    child: Text(
      label,
      style: TextStyle(
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

Widget buildTransactionDetail({
  required String text,
  bool? isPrice = false,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 14,
      height: 1.0,
      letterSpacing: 0.0,
      color: Colors.black,
    ),
  );
}
