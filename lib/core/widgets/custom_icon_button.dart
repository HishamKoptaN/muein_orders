import '../all_imports.dart';

class CustomIconButtonWidget extends StatelessWidget {
  CustomIconButtonWidget({
    super.key,
    required this.onTap,
    required this.icon,
  });

  void Function()? onTap;
  Widget? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: icon,
      ),
    );
  }
}
