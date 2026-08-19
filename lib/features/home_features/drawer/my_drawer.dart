import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/drawer_header.dart';
import 'widgets/drawer_menu_items.dart';

class CustomSideDrawer extends StatelessWidget {
  const CustomSideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200.w,
      backgroundColor: Colors.white,
      child: const Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .start,
        children: [
          CustomDrawerHeader(),
          Divider(),
          Expanded(child: DrawerMenuItems()),
        ],
      ),
    );
  }
}
