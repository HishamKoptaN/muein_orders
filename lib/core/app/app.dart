import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mubin Orders',
      debugShowCheckedModeBanner: false,
      // Add other app-wide configurations here
    );
  }
}

// Global navigation key
class GlobalVariable {
  static final navState = GlobalKey<NavigatorState>();
}
