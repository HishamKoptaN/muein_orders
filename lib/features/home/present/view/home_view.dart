import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:translator/translator.dart';

import '../../../../core/extensions/locale_extensions.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../drawer/my_drawer.dart';
import '../../../orders/present/views/orders_view.dart';
import '../../../profile/present/bloc/profile_bloc.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
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

  String _getProductImage(int? productId) {
    switch (productId) {
      case 1:
        return 'assets/images/25.png';
      case 2:
        return 'assets/images/45.png';
      case 3:
        return 'assets/images/90.png';
      case 4:
        return 'assets/images/1.png';
      default:
        return 'assets/images/1.png';
    }
  }

  Future<String> _getTranslatedText({required String text}) async {
    if (text.isEmpty) return text;
    try {
      return await translateText(context, text);
    } catch (e) {
      debugPrint('Translation error: $e');
      return text;
    }
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
            child: SvgPicture.asset(
              Assets.icons.baseCart,
              fit: BoxFit.contain,
              width: 45,
              height: 45,
            ),
          ),
        ],
      ),
      drawer: const CustomSideDrawer(),

      body: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (orderTypeResEntity) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 1.5,
                          ),
                      padding: const EdgeInsets.all(8),
                      itemCount: orderTypeResEntity.length,
                      itemBuilder: (context, index) {
                        final orderType = orderTypeResEntity[index];
                        return _buildOrderCard(
                          t: t!,
                          orderTypeResEntity: orderType,
                          title: orderType.productType?.name ?? '',
                        );
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

  Widget _buildOrderCard({
    required AppLocalizations t,
    required String title,
    required OrderTypeResEntity orderTypeResEntity,
  }) {
    return GestureDetector(
      onTap: () {
        NavigationService.push(
          context,
          OrdersView.routeName,
          extra: orderTypeResEntity.productType,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(
              _getProductImage(orderTypeResEntity.productType?.id),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 70.h,
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          orderTypeResEntity.productType?.name ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almarai',
                          ),
                        ),
                        Gap(5.w),
                        if (orderTypeResEntity.productType?.docsCount != null &&
                            (orderTypeResEntity.productType?.docsCount ?? 0) >
                                0)
                          Text(
                            '${orderTypeResEntity.productType?.docsCount ?? ''}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Jost',
                            ),
                          ),
                        Gap(5.w),
                        Text(
                          orderTypeResEntity.productType?.name ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          t.numberOfRequests,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Jost',
                          ),
                        ),
                        Gap(5.w),
                        Text(
                          '(${orderTypeResEntity.ordersCount ?? ''})',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Jost',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FallbackLocalizations {
  String get main => 'Home';
  String get numberOfRequests => 'Number of requests';
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
