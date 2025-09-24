import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    this.inputFormatters,
    this.decoration,
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
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: widget.width ?? 332.w,
      height: 60.h,
      margin: widget.margin ?? EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: widget.backGroundColor ?? Colors.white.withOpacity(0.19),
        borderRadius: BorderRadius.circular(14.r),
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
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: widget.style ??
            theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              fontFamily: 'Almarai',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
        onFieldSubmitted: widget.onFieldSubmitted,
        focusNode: widget.focusNode,
        inputFormatters: widget.inputFormatters,
        decoration: widget.decoration ??
            InputDecoration(
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.57),
                    fontFamily: 'Almarai',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
              labelText: widget.labelText,
              labelStyle: widget.labelStyle ??
                  theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontFamily: 'Almarai',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
              errorText: widget.errorText,
              errorStyle: widget.errorStyle ??
                  theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.57),
                    fontFamily: 'Almarai',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
              isDense: true,
              filled: false,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.isPassword && widget.showPasswordToggle
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white.withOpacity(0.57),
                        size: 24.sp,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                        widget.onToggleObscure?.call();
                      },
                    )
                  : widget.suffixIcon,
            ),
      ),
    );
  }
}
