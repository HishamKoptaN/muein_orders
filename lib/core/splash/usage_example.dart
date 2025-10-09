// مثال على استخدام صفحات التحميل في التطبيق:

// 1. في AppWidget أو أي مكان آخر حيث تحتاج إلى إظهار شاشة التحميل:
// import '../splash/loading_view.dart';
// import '../splash/simple_loading_view.dart';

// 2. استخدام الـ LoadingView الكاملة مع صورة الخلفية:
// Navigator.of(context).push(
//   MaterialPageRoute(
//     builder: (_) => const LoadingView(),
//   ),
// );

// 3. استخدام الـ SimpleLoadingView البسيطة:
// Navigator.of(context).push(
//   MaterialPageRoute(
//     builder: (_) => const SimpleLoadingView(
//       loadingText: 'جاري حفظ البيانات...',
//       showProgressIndicator: true,
//     ),
//   ),
// );

// 4. استخدامها كـ FutureBuilder في حالة تحميل البيانات:
// FutureBuilder(
//   future: _loadData(),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return const SimpleLoadingView(
//         loadingText: 'جاري تحميل البيانات...',
//       );
//     }
//     // باقي الكود...
//   },
// );
