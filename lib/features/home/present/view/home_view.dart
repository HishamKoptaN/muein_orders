import 'package:flutter_svg/flutter_svg.dart';
import 'package:translator/translator.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/extensions/locale_extensions.dart';
import '../../../../core/routing/navigation_service.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/notification_icon.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../drawer/my_drawer.dart';
import '../../../orders/present/views/orders_view.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });
  static const String routeName = 'home';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<String> _getTranslatedText({
    required String text,
  }) async {
    if (text.isEmpty) return text;
    try {
      return await translateText(
        context,
        text,
      );
    } catch (e) {
      debugPrint('Translation error: $e');
      return text;
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(
          const HomeEvent.getSummary(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(
        title: t.main,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 9,
              ),
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
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: SvgPicture.asset(
              Assets.icons.baseCart,
              fit: BoxFit.contain,
              width: 45,
              height: 45,
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (
                    orderTypeResEntity,
                  ) {
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
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        final orderType = orderTypeResEntity[index];
                        return _buildOrderCard(
                          t: t,
                          orderTypeResEntity: orderType,
                          title: orderType.package?.type?.name ?? '',
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
          extra: orderTypeResEntity.package,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(orderTypeResEntity.package?.image ?? ''),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 175.w,
                height: 70.h,
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.symmetric(vertical: 8),
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
                        FutureBuilder<String>(
                          future: _getTranslatedText(
                            text: orderTypeResEntity.package?.type?.name ?? '',
                          ),
                          builder: (context, snapshot) {
                            return Text(
                              snapshot.data ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Almarai',
                              ),
                            );
                          },
                        ),
                        Gap(
                          5.w,
                        ),
                        Text(
                          '${orderTypeResEntity.package?.quantity ?? ''}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Jost',
                          ),
                        ),
                        Gap(
                          5.w,
                        ),
                        FutureBuilder<String>(
                          future: _getTranslatedText(
                            text: orderTypeResEntity
                                    .package?.type?.distributedType ??
                                '',
                          ),
                          builder: (context, snapshot) {
                            return Text(
                              '(${snapshot.data})',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Almarai',
                              ),
                            );
                          },
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
                        Gap(
                          5.w,
                        ),
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
