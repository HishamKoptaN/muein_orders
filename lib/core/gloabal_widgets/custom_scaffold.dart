import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  PreferredSizeWidget? appBar;
  Widget? drawer;
  Widget? body;
  Color? backgroundColor;
  CustomScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      backgroundColor: backgroundColor ?? Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: body,
      ),
    );
  }
}
