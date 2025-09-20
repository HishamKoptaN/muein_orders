import 'package:flutter/material.dart';

class SelectLanguageView extends StatelessWidget {
  static const String routeName = '/select-language';
  
  const SelectLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Select Language'),
      ),
    );
  }
}
