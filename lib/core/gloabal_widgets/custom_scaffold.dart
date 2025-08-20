import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  PreferredSizeWidget? appBar;
  Widget? drawer;

  Widget? body;
  CustomScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        drawer: drawer,
        body: Padding(
          padding: EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: body,
        ),
      ),
    );
  }
}
