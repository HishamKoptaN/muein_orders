import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/background/workmanager_initializer.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/feedback/error_content.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../drawer/my_drawer.dart';
import '../../../notifications/present/view/notifications_view.dart';
import '../../../profile/present/bloc/profile_bloc.dart';
import '../bloc/stats_bloc.dart';
import 'widgets/order_cared_widget.dart';

class StatsView extends StatefulWidget {
  const StatsView({super.key});
  static const String routeName = 'stats';
  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
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
    getIt<StatsBloc>().add(const StatsEvent.getStats());
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  Widget build(BuildContext context) {
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
      body: BlocBuilder<StatsBloc, StatsState>(
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
                    return StatCard(stat: stat);
                  },
                ),
              );
            },
            loading: () => const CustomCircularProgress(color: Colors.black),
            failure: (apiError) {
              return ErrorContent(message: apiError.message ?? '');
            },
            orElse: () => const CustomCircularProgress(color: Colors.black),
          );
        },
      ),
    );
  }
}
