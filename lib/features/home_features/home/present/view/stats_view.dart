import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/error_content.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../orders_features/salla_orders_items/present/views/salla_order_items_view.dart';
import '../../../drawer/my_drawer.dart';
import '../../../../notifications/present/view/notifications_view.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../bloc/stats_bloc.dart';
import 'widgets/stat_cared_widget.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});
  static const String routeName = 'stats';
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('الرئيسية'),
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset('assets/icons/menu.svg'),
            );
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              context.push('/${NotificationsView.routeName}');
            },
            child: CircleAvatar(
              radius: 18.r,
              child: Center(child: SvgPicture.asset(Assets.icons.baseCart)),
            ),
          ),
        ],
      ),
      drawer: const CustomSideDrawer(),
      body: BlocConsumer<StatsBloc, StatsState>(
        bloc: getIt<StatsBloc>(),
        listener: (context, state) async {
          await state.mapOrNull(
            loaded: (st) async {
              if (kDebugMode) {
                await Future.microtask(() async {
                  await context.push(
                    '/${SallaOrderItemsView.routeName}',
                    extra: st.stats.first,
                  );
                });
              }
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (stats) {
              return BodyWidget(stats: stats);
            },
            failure: (apiError) {
              return ErrorContent(message: apiError.message);
            },
            orElse: () {
              return const Skeletonizer(
                enabled: true,
                child: BodyWidget(stats: []),
              );
            },
          );
        },
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key, this.stats});

  final List<StatEntity>? stats;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 20.h,
        childAspectRatio: 1.4,
      ),
      itemCount: stats?.length ?? 10,
      itemBuilder: (context, index) {
        return StatCard(stat: stats?[index] ?? const StatEntity());
      },
    );
  }
}
