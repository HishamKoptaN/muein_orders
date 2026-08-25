// lib/core/utils/date_formatter.dart
import 'package:intl/intl.dart';

String formatDate({required dynamic dateTime}) {
  if (dateTime == null) return '';

  DateTime? parsedDateTime;

  if (dateTime is String) {
    try {
      if (dateTime.contains('-')) {
        if (dateTime.length <= 6) {
          final currentYear = DateTime.now().year.toString();
          final fullDate = '$currentYear-$dateTime';
          parsedDateTime = DateTime.parse(fullDate);
        } else {
          parsedDateTime = DateTime.parse(dateTime);
        }
      } else {
        parsedDateTime = DateTime.parse(dateTime);
      }
    } catch (_) {
      return dateTime;
    }
  } else if (dateTime is DateTime) {
    parsedDateTime = dateTime;
  } else {
    return dateTime.toString();
  }

  try {
    final now = DateTime.now();
    final difference = parsedDateTime.difference(now).inDays.abs();
    if (difference <= 30) {
      return DateFormat('d MMMM y', 'ar').format(parsedDateTime);
    } else {
      return DateFormat('d/M/y').format(parsedDateTime);
    }
  } catch (_) {
    return dateTime is String ? dateTime : dateTime.toString();
  }
}

//! 'dd/MM/yyyy hh:mm a'
//! 'dd/MM/yyyy hh:mm'
