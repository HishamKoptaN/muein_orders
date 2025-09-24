import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final PreferredSize? bottom;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.bottom,
    this.automaticallyImplyLeading = true,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black, // لون النص والأيقونات أسود
      iconTheme: const IconThemeData(
          color: Colors.black), // لون أيقونات الـ AppBar أسود
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: bottom,
      leading: leading, // استخدم الـ leading المخصص إذا تم تمريره
      actions: actions,
      // leading: IconButton(
      //     icon: const Icon(Icons.notifications_none),
      //     onPressed: () {},
      //   ),
      // actions: [
      //   BlocBuilder<ThemeCubit, ThemeMode>(
      //     builder: (context, themeMode) {
      //       return Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 8),
      //         child: Switch(
      //           value: themeMode == ThemeMode.dark,
      //           onChanged: (val) {
      //             context.read<ThemeCubit>().toggleTheme(val);
      //           },
      //         ),
      //       );
      //     },
      //   ),
      //   LanguageSwitchButton(),
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
