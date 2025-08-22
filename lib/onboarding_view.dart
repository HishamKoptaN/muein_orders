import 'package:flutter/material.dart';
import 'core/helper_functions/navigation.dart';
import 'features/orders/present/views/orders_view.dart';
import 'l10n/app_localizations.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  static const String routeName = "Onboarding";
  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  void _nextPage() {
    if (_currentIndex < 2) {
      _controller.nextPage(
        duration: const Duration(
          milliseconds: 300,
        ),
        curve: Curves.easeInOut,
      );
    } else {
      navG(
        route: OrdersView.routeName,
      );
    }
  }

  List<Widget> _buildPages(AppLocalizations t) => [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(t.welcome),
              Text(
                t.we_are_happy_to_have_you_join_our_store,
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.get_to_know_the_application_interface,
              ),
              Text(
                t.here_you_will_find_tasks_requests_alerts_and_filters,
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.documentation_with_photos_and_videos,
              ),
              Text(
                t.make_sure_the_images_are_clear_and_the_number_of_copies_of_the_quran_is_correct_before_sending,
              ),
            ],
          ),
        ),
      ];

  @override
  Widget build(
    BuildContext context,
  ) {
    final t = AppLocalizations.of(
      context,
    )!;
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (
          i,
        ) {
          setState(
            () => _currentIndex = i,
          );
        },
        children: _buildPages(t),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: ElevatedButton(
          onPressed: _nextPage,
          child: Text(
            _currentIndex == 2 ? t.start : t.next,
          ),
        ),
      ),
    );
  }
}
