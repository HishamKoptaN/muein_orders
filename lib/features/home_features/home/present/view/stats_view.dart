import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/background/workmanager_initializer.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/error_content.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../drawer/my_drawer.dart';
import '../../../../notifications/present/view/notifications_view.dart';
import '../../../../orders_features/orders_items/present/views/salla_order_items_view.dart';
import '../../../../profile/present/bloc/profile_bloc.dart';
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
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const .symmetric(horizontal: 9),
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  fit: BoxFit.contain,
                  width: 45,
                  height: 45,
                ),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: .symmetric(horizontal: 15.w),
            child: InkWell(
              onTap: () {
                context.push('/${NotificationsView.routeName}');
              },
              child: SvgPicture.asset(
                Assets.icons.baseCart,
                fit: .contain,
                width: 45,
                height: 45,
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomSideDrawer(),
      body: BlocConsumer<StatsBloc, StatsState>(
        bloc: getIt<StatsBloc>(),
        listener: (context, state) {
          state.maybeWhen(
            loaded: (stats) {
              Future.microtask(() {
                context.go(
                  '/${SallaOrderItemsView.routeName}',
                  extra: stats.first,
                );
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (stats) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 1.4,
                ),
                itemCount: stats.length,
                itemBuilder: (context, index) {
                  final stat = stats[index];
                  return StatCard(stat: stat);
                },
              );
            },
            loading: () {
              return const CustomCircularProgress(color: Colors.black);
            },
            failure: (apiError) {
              return ErrorContent(message: apiError.message);
            },
            orElse: () {
              return const CustomCircularProgress(color: Colors.black);
            },
          );
        },
      ),
    );
  }
}
