import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String? message;
  
  const ErrorPage({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حدث خطأ'),
      ),
      body: Center(
        child: Text(message ?? 'حدث خطأ غير متوقع'),
      ),
    );
  }
}
