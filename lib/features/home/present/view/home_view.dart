import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:translator/translator.dart';

import '../../../../core/background/workmanager_initializer.dart';
import '../../../../core/di/dependency_injection.dart';
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
  const HomeView({super.key});
  static const String routeName = 'home';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _initialized = false;
  @override
  void initState() {
    super.initState();
    Future.microtask(_initializeWorkManager);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_initialized) {
        _initializeData();
        _initialized = true;
      }
    });
  }

  Future<void> _initializeWorkManager() async {
    final workManager = getIt<WorkManagerInitializer>();
    await workManager.initialize();
    await workManager.registerSystemUploadTask();
    await Future.microtask(workManager.startPendingUploads);
  }

  void _initializeData() {
    debugPrint('🏠 Initializing Home data...');
    getIt<HomeBloc>().add(const HomeEvent.getSummary());
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  Widget build(BuildContext context) {
    final t = Localizations.of<AppLocalizations>(context, AppLocalizations);
    return CustomScaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'الرئيسية',
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
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (stats) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: stats.length,
                  itemBuilder: (context, index) {
                    final stat = stats[index];
                    return OrderCard(stat: stat);
                  },
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        },
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
