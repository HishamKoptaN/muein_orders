
import 'package:flutter/material.dart';

CardTheme  appBarTheme({required ColorScheme colorScheme}) {
  return CardTheme (
    elevation: 2,
    shadowColor: colorScheme.shadow,
   
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(12),
      ),
    ),
  );
}
