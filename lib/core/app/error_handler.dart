import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ErrorApp extends StatelessWidget {
  final FlutterErrorDetails? errorDetails;
  
  const ErrorApp({super.key, this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 80,
              ),
              const SizedBox(height: 20),
              const Text(
                'حدث خطأ غير متوقع',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'عذراً، حدث خطأ ما. يرجى إعادة تشغيل التطبيق.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                  textDirection: TextDirection.rtl,
                ),
              ),
              if (kDebugMode && errorDetails != null) ...[
                const SizedBox(height: 24),
                const Text(
                  'تفاصيل الخطأ (لتطوير فقط):',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SelectableText(
                    errorDetails!.exceptionAsString(),
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add restart logic if needed
                },
                child: const Text('إعادة المحاولة'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
