import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/app_colors.dart';

class DatePickerField extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hint;
  final String? Function(String?)? validator;
  final void Function(DateTime selectedDate)? onDateSelected;

  const DatePickerField({
    super.key,
    this.controller,
    this.labelText,
    this.hint,
    this.validator,
    this.onDateSelected,
  });

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  late TextEditingController _localController;

  @override
  void initState() {
    super.initState();
    _localController = widget.controller ?? TextEditingController();
    _localController.text =
        DateFormat('yyyy-MM-dd').format(DateTime.now()); 
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.tryParse(_localController.text) ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      helpText: 'اختر التاريخ',
      locale: const Locale("ar", "EG"),
    );
    if (picked != null) {
      _localController.text = DateFormat('yyyy-MM-dd').format(picked);
      widget.onDateSelected?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _localController,
      readOnly: true,
      onTap: () => _selectDate(context),
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const Icon(Icons.calendar_today, color: Colors.grey),
        floatingLabelStyle: const TextStyle(
          color: AppColors.customRed,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Color(0xFFD92728),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
