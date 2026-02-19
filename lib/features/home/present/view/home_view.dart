import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:translator/translator.dart';

import '../../../../core/extensions/locale_extensions.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../drawer/my_drawer.dart';
import '../../../notifications/present/view/notifications_view.dart';
import '../../../profile/present/bloc/profile_bloc.dart';
import '../bloc/home_bloc.dart';
import 'widgets/order_cared_widget.dart';

class HomeView extends StatefulWidget {
  final Widget? child;
  const HomeView({super.key, this.child});
  static const String routeName = 'home';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.getSummary());
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  Widget build(BuildContext context) {
    final t = Localizations.of<AppLocalizations>(context, AppLocalizations);
    return CustomScaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: t?.main ?? 'Home',
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                context.push('/${NotificationsView.routeName}');
              },
              child: SvgPicture.asset(
                Assets.icons.baseCart,
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomSideDrawer(),
      body:
          widget.child ??
          Column(
            children: [
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (stats) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 1.5,
                              ),
                          padding: const EdgeInsets.all(8),
                          itemCount: stats.length,
                          itemBuilder: (context, index) {
                            final stat = stats[index];
                            return OrderCard(stat: stat);
                          },
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
    );
  }
}

Future<String> translateText(
  BuildContext context,
  String input, {
  String? to,
}) async {
  if (input.isEmpty) return input;
  final translator = GoogleTranslator();
  try {
    final targetLanguage = to ?? context.currentLocale.languageCode;
    final translation = await translator.translate(input, to: targetLanguage);
    return translation.text;
  } catch (e) {
    debugPrint('Translation error: $e');
    return input;
  }
}
