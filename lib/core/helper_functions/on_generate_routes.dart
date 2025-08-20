import 'package:flutter/material.dart';
import 'package:mubin_orders/features/home/home_view.dart';
import 'package:sign_in/sign_in.dart';
import '../../SignInUi.dart';
import '../../features/docs/present/views/widgets/image_preview.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../l10n/app_localizations.dart';
import '../gloabal_widgets/video_player.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case AuthView.routeName:
    //   return MaterialPageRoute(builder: (context) => const AuthView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => SignInView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case OrdersView.routeName:
      return MaterialPageRoute(builder: (context) => const OrdersView());
    case ImagePreview.routeName:
      final args = settings.arguments as Map<String, dynamic>?;
      final imageUrl = args?['image_url'] ?? '';
      return MaterialPageRoute(
        builder: (context) => ImagePreview(
          imageUrl: imageUrl,
        ),
      );
    case VideoPlayerView.routeName:
      final args = settings.arguments as Map<String, dynamic>?;
      final videoUrl = args?['video_url'] ?? '';
      return MaterialPageRoute(
        builder: (context) => VideoPlayerView(
          videoUrl: videoUrl,
        ),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text("حدث خطأ, لا يمكن العثور على الصفحة المطلوبة"),
          ),
        ),
      );
  }
}
