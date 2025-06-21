// lib/core/utils/date_formatter.dart
import 'package:intl/intl.dart';

String formatDate({required DateTime date, String? pattern}) {
  return DateFormat(pattern ?? 'dd/MM/yyyy').format(date);
}

//! 'dd/MM/yyyy hh:mm a'
//! 'dd/MM/yyyy hh:mm'
