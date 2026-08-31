import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../localization/auto_localizer.dart';
import '../../theme/core/extensions/theme_ext.dart';

class CustomAuthTextFormField extends StatefulWidget {
  const CustomAuthTextFormField({
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
    this.width,
    this.height,
    this.margin,
    this.showPasswordToggle = true,
    this.errorText,
    this.onFieldSubmitted,
    this.focusNode,
    this.onToggleObscure,
    this.inputFormatters,
    this.enabled = true,
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
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final bool showPasswordToggle;
  final String? errorText;
  final ValueChanged<String?>? onFieldSubmitted;
  final VoidCallback? onToggleObscure;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  @override
  State<CustomAuthTextFormField> createState() =>
      _CustomAuthTextFormFieldState();
}

class _CustomAuthTextFormFieldState extends State<CustomAuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: AutoLocalizer.translate(
        widget.hintText ?? '',
        Localizations.localeOf(context).languageCode,
      ),
      initialData: widget.hintText,
      builder: (context, asyncSnapshot) {
        return TextFormField(
          initialValue: widget.initialValue,
          onChanged: widget.onChanged,
          obscureText: widget.obscureText,
          keyboardType: widget.keyboardType ?? widget.textInputType,
          textInputAction: widget.textInputAction,
          onSaved: widget.onSaved,
          validator: widget.validator,
          decoration: InputDecoration(
            filled: true,
            hintStyle: context.textTheme.labelMedium?.copyWith(
              color: context.colorScheme.onPrimary.withValues(alpha: .57),
            ),
            fillColor: context.colorScheme.secondaryFixed.withValues(
              alpha: .15,
            ),
            border: .none,
            hintText: asyncSnapshot.data ?? '',
            errorText: widget.errorText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
          ),
        );
      },
    );
  }
}
