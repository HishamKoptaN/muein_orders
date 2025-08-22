import '../all_imports.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.initialValue,
    this.hintText,
    this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    this.maxLines,
    this.backGroundColor,
    this.validator,
    this.onChanged,
    this.readOnly,
  });
  final String? initialValue;
  String? Function(String?)? validator;
  void Function(String)? onChanged;
  final String? hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final int? maxLines;
  final Color? backGroundColor;
  final bool? readOnly;

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
          color: backGroundColor ?? const Color(0xFFF5F9FE),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: TextFormField(
            initialValue: initialValue,
            readOnly: readOnly ?? true,
            maxLines: maxLines ?? 1,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: obscureText,
            onSaved: onSaved,
            validator: validator,
            onChanged: onChanged,
            keyboardType: textInputType,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
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
      ),
    );
  }
}
