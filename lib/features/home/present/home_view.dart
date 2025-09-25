import 'package:flutter_svg/flutter_svg.dart';
import 'package:translator/translator.dart';

import '../../../core/all_imports.dart';
import '../../../core/extensions/locale_extensions.dart';
import '../../../core/routing/navigation_service.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/app_localizations.dart';
import '../../drawer/my_drawer.dart';
import '../../orders/present/views/orders_view.dart';
import 'bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });
  static const String routeName = 'home';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // دالة مساعدة للحصول على النص المترجم
  Future<String> _getTranslatedText(String text) async {
    if (text.isEmpty) return text;
    try {
      return await translateText(context, text);
    } catch (e) {
      debugPrint('Translation error: $e');
      return text;
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.getSummary());
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
                        return FutureBuilder<String>(
                          future: _getTranslatedText(
                            orderType.package?.type?.name ?? '',
                          ),
                          builder: (context, snapshot) {
                            return _buildOrderCard(
                              packageId: orderType.package?.id ?? 0,
                              image: orderType.package?.image ?? '',
                              title: orderType.package?.quantity == 0
                                  ? "${snapshot.data ?? orderType.package?.type?.name ?? ''}"
                                  : "${snapshot.data ?? orderType.package?.type?.name ?? ''} ${orderType.package?.quantity ?? ''}",
                              count: '${orderType.ordersCount.toString()} ',
                            );
                          },
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
    required String image,
    required String title,
    required String count,
    required int packageId,
  }) {
    return GestureDetector(
      onTap: () {
        NavigationService.navigateTo(
          context: context,
          routeName: OrdersView.routeName,
          arguments: {'packageId': packageId},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
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
            children: [
              Container(
                width: 109,
                height: 71,
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almarai',
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      count,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Jost',
                      ),
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
    // استخدام اللغة المحددة أو اللغة الحالية من السياق
    final targetLanguage = to ?? context.currentLocale.languageCode;
    final translation = await translator.translate(input, to: targetLanguage);
    return translation.text;
  } catch (e) {
    debugPrint('Translation error: $e');
    return input;
  }
}
