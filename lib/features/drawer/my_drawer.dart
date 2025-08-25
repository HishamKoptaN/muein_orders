import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:mode_theme/mode_theme.dart';
import '../../SignInUi.dart';
import '../../core/gloabal_widgets/settings_tab.dart';
import '../../core/widgets/LanguageSwitchButton.dart';
import '../../l10n/app_localizations.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    final t = AppLocalizations.of(context)!;
    return SafeArea(
      child: Drawer(
        width: 225.w,
        child: SizedBox(
          height: 70,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Gap(
                  25.h,
                ),
                ThemeSwitcherTile(),
                LanguageSwitchButton(),
                SettingsTabWidget(
                  title: t.log_out,
                  icon: FontAwesomeIcons.signOut,
                  onTap: () => {
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
                                t.are_you_sure,
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
                                        await FirebaseAuth.instance.signOut();
                                        // context
                                        //     .read<AuthBloc>()
                                        //     .add(const AuthEvent.clearToken());
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) => SignInView(),
                                          ),
                                          (route) => false,
                                        );
                                      },
                                      child: Text(
                                        t.log_out,
                                        style: const TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
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
                    ),
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  IconData? icon;
  final String text;
  final void Function()? onTap;

  MyListTile({super.key, this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            text,
          ),
          onTap: onTap,
        ),
        const Divider(),
      ],
    );
  }
}
