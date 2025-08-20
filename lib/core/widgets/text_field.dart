import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.labelText,
    this.enabled,
    this.readOnly,
    this.onTap,
    this.hint,
    this.textInputType,
    this.suffixIcon,
    this.validator,
    this.autovalidateMode,
    this.obscureText = false,
    this.maxLines = 1,
  });
  final TextEditingController? controller;
  final String? initialValue;
  final Function()? onTap;
  final String? labelText;
  final bool? enabled;
  final bool? readOnly;
  final String? hint;
  final TextInputType? textInputType;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final IconData? suffixIcon;
  final bool obscureText;
  final int maxLines;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController _internalController;
  bool _isExternalController = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {
          _autovalidateMode = AutovalidateMode.onUserInteraction;
        });
      }
    });
    _isExternalController = widget.controller != null;
    _internalController = widget.controller ?? TextEditingController();
    if (widget.initialValue != null) {
      _internalController.text = widget.initialValue!;
    }
  }

  @override
  void didUpdateWidget(CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_isExternalController &&
        widget.initialValue != oldWidget.initialValue) {
      _internalController.text = widget.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    if (!_isExternalController) {
      _internalController.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext contex,
  ) {
    return SizedBox(
      height: 75.h,
      width: 300.w,
      child: TextFormField(
        controller: _internalController,
        autovalidateMode: _autovalidateMode,
        focusNode: _focusNode,
        // initialValue: widget.initialValue,
        onChanged: widget.onChanged,
        enabled: widget.enabled ?? true,
        obscureText: widget.obscureText,
        validator: widget.validator,
        maxLines: widget.maxLines,
        onTap: widget.onTap,
        readOnly: widget.readOnly ?? false,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(
            widget.suffixIcon,
          ),
          labelText: widget.labelText,
          hintText: widget.hint,
        ),
      ),
    );
  }
}
