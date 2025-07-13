import '../all_imports.dart';
import '../utils/device_helper.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    this.maxlines,
    this.backGroundColor,
    this.validator,
    this.onChanged,
  });

  String? Function(String?)? validator;
  void Function(String)? onChanged;
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final int? maxlines;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: DeviceHelper.getResponsiveWidth(context).w,
      height: DeviceHelper.getResponsiveHeight(context).h,  child: TextFormField(
        maxLines: maxlines ?? 1,
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
        onChanged: onChanged,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
