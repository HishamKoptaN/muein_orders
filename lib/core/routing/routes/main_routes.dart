import 'package:go_router/go_router.dart';

import '../../../features/start/present/start_view.dart';
import '../../../features/start/present/select_language_view.dart';
import '../route_utils.dart';

final List<RouteBase> mainRoutes = [
  createRoute(
    routeName: StartView.routeName,
    builder: (context, state) => const StartView(),
  ),
  createRoute(
    routeName: SelectLanguageView.routeName,
    builder: (context, state) => const SelectLanguageView(),
  ),
];
