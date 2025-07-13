import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
