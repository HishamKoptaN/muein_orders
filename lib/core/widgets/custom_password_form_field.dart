import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mubin_orders/core/all_imports.dart';

class CustomPasswordFormField extends StatefulWidget {
  final String? labelText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final double? height;
  final double? width;
  final InputBorder? border;
  final String? hintText;
  final TextInputType? textInputType;

  const CustomPasswordFormField({
    super.key,
    this.labelText,
    this.onChanged,
    this.validator,
    this.height,
    this.width,
    this.obscureText = true,
    this.controller,
    this.keyboardType,
    this.border,
    this.hintText,
    this.textInputType,
  });

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 18,
        right: 24,
        bottom: 18,
        left: 24,
      ),
      child: Container(
        width: 346.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F9FE),
          borderRadius: BorderRadius.circular(14),
        ),
        child: TextFormField(
          controller: widget.controller,
          onChanged: widget.onChanged,
          validator: widget.validator,
          obscureText: _obscureText,
          keyboardType: widget.keyboardType,
          style: const TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: InkWell(
              onTap: () {
                setState(
                  () {
                    _obscureText = !_obscureText;
                  },
                );
              },
              child: Icon(
                _obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                color: Colors.grey[800],
              ),
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            filled: true,
            fillColor: Colors.transparent,
            hintStyle: const TextStyle(
              color: Color(0xFF757575),
            ),
          ),
        ),
      ),
    );
  }
}
