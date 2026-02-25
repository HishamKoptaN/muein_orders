import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/routing/navigation_service.dart';
import '../../../l10n/app_localizations.dart';
import '../../auth/change_pass/present/views/change_pass_view.dart';
import '../../financial/present/view/create_expense.dart';
import '../../instructions/present/view/instructions_view.dart';
import '../../language/view/select_language.dart';
import '../../profile/present/views/profile_view.dart';
import 'logout_dialog.dart';
import 'menu_tile.dart';

class DrawerMenuItems extends StatelessWidget {
  const DrawerMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      children: [
        MenuTile(
          icon: Icons.person_outline_rounded,
          title: 'ملفي الشخصي',
          onTap: () {
            NavigationService.pushNamed(
              context: context,
              routeName: ProfileView.routeName,
            );
          },
        ),
        MenuTile(
          icon: Icons.account_balance_wallet_outlined,
          title: 'مصروفات',
          onTap: () {
            NavigationService.pushNamed(
              context: context,
              routeName: CreateExpenseView.routeName,
            );
          },
        ),
        MenuTile(
          icon: FontAwesomeIcons.language,
          title: 'اللغة',
          onTap: () {
            NavigationService.pushNamed(
              context: context,
              routeName: SelectLanguageView.routeName,
            );
          },
        ),
        MenuTile(
          icon: Icons.info,
          title: 'التعليمات',
          onTap: () {
            NavigationService.pushNamed(
              context: context,
              routeName: InstructionsView.routeName,
            );
          },
        ),
        MenuTile(
          icon: Icons.lock_outline_rounded,
          title: 'تغيير كلمة المرور',
          onTap: () {
            NavigationService.pushNamed(
              context: context,
              routeName: ChangePassView.routeName,
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(),
        ),
        MenuTile(
          icon: Icons.logout_rounded,
          title: 'تسجيل الخروج',
          onTap: () {
            showLogoutBottomSheet(context);
          },
          textColor: const Color(0xFFD32F2F),
        ),
      ],
    );
  }
}
