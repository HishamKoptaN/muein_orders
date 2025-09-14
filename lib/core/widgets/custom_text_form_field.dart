import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../all_imports.dart';

class CustomTextFormField extends StatefulWidget {
  /// Creates a customizable text form field that can be used for both regular text and password input.
  const CustomTextFormField({
    super.key,
    this.controller,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.isPassword = false,
    this.maxLines = 1,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.hintStyle,
    this.labelStyle,
    this.errorStyle,
    this.style,
    this.filled = true,
    this.fillColor,
    this.backGroundColor,
    this.isDense = true,
    this.width,
    this.height,
    this.margin,
    this.showPasswordToggle = true,
    this.iconColor,
    this.errorText,
    this.onFieldSubmitted,
    this.focusNode,
    this.onToggleObscure,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool isPassword;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
  final FormFieldValidator<String>? validator;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final TextStyle? style;
  final bool filled;
  final Color? fillColor;
  final Color? backGroundColor;
  final bool isDense;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool showPasswordToggle;
  final Color? iconColor;
  final String? errorText;
  final ValueChanged<String?>? onFieldSubmitted;
  final VoidCallback? onToggleObscure;
  final FocusNode? focusNode;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: widget.width ?? double.infinity,
      height: widget.height ?? 56,
      // margin: widget.margin ??
      //     const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: widget.backGroundColor ?? Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        controller: widget.controller,
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType ?? widget.textInputType,
        textInputAction: widget.textInputAction,
        obscureText: widget.isPassword ? _obscureText : widget.obscureText,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        onSaved: widget.onSaved,
        validator: widget.validator,
        readOnly: widget.readOnly,
        style: widget.style ?? const TextStyle(color: Colors.white),
        onFieldSubmitted: widget.onFieldSubmitted,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          hintStyle: widget.hintStyle ??
              TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
          labelStyle: widget.labelStyle,
          errorStyle: widget.errorStyle,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: widget.prefixIcon,
          errorText: widget.errorText,
          suffixIcon: widget.isPassword
              ? widget.showPasswordToggle
                  ? IconButton(
                      icon: Icon(
                        _obscureText
                            ? FontAwesomeIcons.eyeSlash
                            : FontAwesomeIcons.eye,
                        color:
                            widget.iconColor ?? Colors.white.withOpacity(0.7),
                        size: 20,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            _obscureText = !_obscureText;
                          },
                        );
                      },
                    )
                  : null
              : widget.suffixIcon,
          contentPadding: widget.contentPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          isDense: true,
          filled: false,
        ),
      ),
    );
  }
}
