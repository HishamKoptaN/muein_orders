import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/navigation_service.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth/present/bloc/auth_bloc.dart';
import '../auth/sign_in/present/views/sign_in_view.dart';
import '../language/view/select_language.dart';
import '../profile/present/views/profile_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    final t = AppLocalizations.of(context);
    return SafeArea(
      child: Drawer(
        width: 225,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 16.h,
              children: [
                // Gap(
                //   25.h,
                // ),
                // ThemeSwitcherTile(),
                // const CircleAvatar(
                //   radius: 34,
                //   backgroundImage: AssetImage('assets/profile.jpg'), // ضع صورتك
                // ),
                // const SizedBox(height: 12),
                // const Text(
                //   'ماريا الضبع',
                //   style: TextStyle(
                //     fontFamily: 'Almarai',
                //     fontWeight: FontWeight.bold,
                //     fontSize: 16,
                //     color: Color(0xFF0F0F0F),
                //   ),
                // ),
                // const SizedBox(height: 4),
                // const Text(
                //   '8340985',
                //   style: TextStyle(
                //     fontFamily: 'Inter',
                //     fontSize: 14,
                //     color: Color(0xFF6C7072),
                //   ),
                // ),
                // const Divider(color: Color(0xFFE2E4E6)),
                const SizedBox(height: 25),
                buildMenuItem(
                  icon: FontAwesomeIcons.language,
                  title: t.language,
                  onTap: () {
                    NavigationService.navigateTo(
                      context: context,
                      routeName: SelectLanguageView.routeName,
                    );
                  },
                ),
                buildMenuItem(
                  icon: Icons.person_outline,
                  title: t.profile,
                  onTap: () {
                    NavigationService.navigateTo(
                      context: context,
                      routeName: ProfileScreen.routeName,
                    );
                  },
                ),
                buildMenuItem(
                  title: t.log_out,
                  icon: FontAwesomeIcons.arrowRightFromBracket,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              t.log_out,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                t.areYouSure,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              const Divider(thickness: 1),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () async {
                                        context
                                            .read<AuthBloc>()
                                            .add(const AuthEvent.signedOut());
                                        if (context.mounted) {
                                          context.goNamed(SignInView.routeName);
                                        }
                                      },
                                      child: Text(
                                        t.log_out,
                                        style: const TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                    width: 1,
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        t.close,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required IconData icon,
    required String title,
    required void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 28, color: const Color(0xFF6C7072)),
          const SizedBox(width: 25),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0xFF0F0F0F),
            ),
          ),
        ],
      ),
    );
  }
}
