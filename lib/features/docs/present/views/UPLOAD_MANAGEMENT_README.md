# نظام إدارة التوثيق والرفع باستخدام BLoC

## نظرة عامة

تم تصميم نظام شامل لإدارة التوثيق المحلي والرفع للسيرفر باستخدام BLoC pattern مع Clean Architecture. النظام يوفر:

- ✅ إدارة التوثيق المحلي
- ✅ مراقبة تقدم الرفع في الوقت الفعلي
- ✅ معالجة الأخطاء والمحاولات التلقائية
- ✅ واجهة مستخدم تفاعلية للمراقبة
- ✅ دعم الرفع في الخلفية

## المكونات الرئيسية

### 1. UploadTaskBloc
BLoC رئيسي لإدارة المهام والتوثيق المحلي.

```dart
// الاستخدام الأساسي
context.read<UploadTaskBloc>().add(
  UploadTaskEvent.saveLocalDoc(
    orderId: orderId,
    imageOne: imagePath,
    imageTwo: imagePath,
    videoOne: videoPath,
    videoTwo: videoPath,
    latitude: latitude,
    longitude: longitude,
    shippingCost: shippingCost,
  ),
);
```

### 2. UploadProgressBloc
BLoC لمراقبة التقدم والحالة العامة للرفع.

```dart
// بدء المراقبة
context.read<UploadProgressBloc>().add(
  const UploadProgressEvent.startMonitoring(),
);

// مراقبة طلب معين
context.read<UploadProgressBloc>().startTrackingOrder(orderId);
```

### 3. UploadMonitoringView
شاشة مراقبة شاملة للرفع والتوثيق.

## Events المتاحة

### UploadTaskEvent
- `initialize()` - تهيئة الـ BLoC
- `saveLocalDoc()` - حفظ توثيق محلي
- `startUpload()` - بدء رفع طلب
- `cancelUpload()` - إلغاء رفع طلب
- `checkUploadProgress()` - فحص تقدم طلب معين
- `retryFailedUploads()` - إعادة محاولة الطلبات الفاشلة
- `getLocalDocs()` - الحصول على جميع التوثيق المحلي

### UploadProgressEvent
- `startMonitoring()` - بدء مراقبة التقدم
- `stopMonitoring()` - إيقاف مراقبة التقدم
- `updateProgress()` - تحديث التقدم
- `trackOrderProgress()` - تتبع تقدم طلب معين

## States المتاحة

### UploadTaskState
```dart
UploadTaskState.loaded(
  localDocs: docs,
  pendingUploads: pendingCount,
  failedUploads: failedCount,
  completedUploads: completedCount,
  isProcessing: false,
  error: null,
)
```

### UploadProgressState
```dart
UploadProgressState.monitoring(
  totalDocs: total,
  pendingCount: pending,
  uploadingCount: uploading,
  failedCount: failed,
  completedCount: completed,
  currentUploading: currentDoc,
  progressPercentage: progress,
  orderTracking: trackingMap,
  error: null,
)
```

## مثال الاستخدام

### 1. حفظ توثيق محلي
```dart
context.read<UploadTaskBloc>().add(
  UploadTaskEvent.saveLocalDoc(
    orderId: 123,
    imageOne: '/path/to/image1.jpg',
    imageTwo: '/path/to/image2.jpg',
    videoOne: '/path/to/video1.mp4',
    latitude: 30.123456,
    longitude: 31.123456,
    shippingCost: 100.0,
  ),
);
```

### 2. مراقبة التقدم
```dart
BlocBuilder<UploadProgressBloc, UploadProgressState>(
  builder: (context, state) {
    return state.maybeWhen(
      monitoring: (totalDocs, pendingCount, uploadingCount,
                   failedCount, completedCount, currentUploading,
                   progressPercentage, orderTracking, error) {
        return Column(
          children: [
            Text('إجمالي: $totalDocs'),
            Text('معلق: $pendingCount'),
            Text('يتم الرفع: $uploadingCount'),
            Text('فاشل: $failedCount'),
            Text('مكتمل: $completedCount'),
            if (currentUploading != null)
              Text('الرفع الحالي: طلب ${currentUploading.orderId}'),
            LinearProgressIndicator(value: progressPercentage / 100),
          ],
        );
      },
      orElse: () => const CircularProgressIndicator(),
    );
  },
)
```

### 3. مراقبة طلب معين
```dart
class OrderProgressWidget extends StatefulWidget {
  final int orderId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadProgressBloc, UploadProgressState>(
      builder: (context, state) {
        final orderDoc = state.orderTracking[orderId];

        return orderDoc != null
          ? LinearProgressIndicator(
              value: (orderDoc.uploadProgress ?? 0) / 100,
              color: _getProgressColor(orderDoc.uploadStatus),
            )
          : const SizedBox.shrink();
      },
    );
  }
}
```

## الفوائد

### 1. إدارة الحالة المركزية
- جميع حالات الرفع والتوثيق المحلي في مكان واحد
- سهولة في التتبع والمراقبة
- إمكانية إعادة استخدام الحالة في أجزاء مختلفة من التطبيق

### 2. مراقبة التقدم في الوقت الفعلي
- تحديث تلقائي للتقدم كل 2 ثانية
- تتبع مفصل لكل طلب على حدة
- عرض مرئي للحالة العامة للرفع

### 3. معالجة الأخطاء الشاملة
- إعادة محاولة تلقائية للطلبات الفاشلة
- إشعارات واضحة للمستخدم
- سجلات مفصلة للأخطاء

### 4. واجهة مستخدم تفاعلية
- شاشة مراقبة شاملة
- إحصائيات مرئية للرفع
- أزرار تحكم سهلة الاستخدام

### 5. دعم الرفع في الخلفية
- استمرار الرفع حتى مع إغلاق التطبيق
- إدارة قائمة انتظار للطلبات
- استئناف تلقائي للرفع المقطوع

## أفضل الممارسات

### 1. تهيئة الـ BLoCs
```dart
// في App Widget أو Router
MultiBlocProvider(
  providers: [
    BlocProvider<UploadTaskBloc>(
      create: (context) => UploadTaskBloc(
        localDocsRepo: getIt<LocalDocsRepo>(),
        docsUseCase: getIt<DocsUseCase>(),
        backgroundTaskService: getIt<BackgroundTaskService>(),
      ),
    ),
    BlocProvider<UploadProgressBloc>(
      create: (context) => UploadProgressBloc(
        localDocsRepo: getIt<LocalDocsRepo>(),
      ),
    ),
  ],
  child: const MyApp(),
)
```

### 2. مراقبة دورة حياة التطبيق
```dart
class MyWidget extends StatefulWidget with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // بدء المراقبة
    context.read<UploadProgressBloc>().add(
      const UploadProgressEvent.startMonitoring(),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // إيقاف المراقبة عند الانتقال للخلفية
      context.read<UploadProgressBloc>().add(
        const UploadProgressEvent.stopMonitoring(),
      );
    } else if (state == AppLifecycleState.resumed) {
      // إعادة بدء المراقبة عند العودة للمقدمة
      context.read<UploadProgressBloc>().add(
        const UploadProgressEvent.startMonitoring(),
      );
    }
  }
}
```

### 3. معالجة الأخطاء
```dart
BlocBuilder<UploadTaskBloc, UploadTaskState>(
  builder: (context, state) {
    return state.when(
      initial: () => const LoadingWidget(),
      loading: () => const LoadingWidget(),
      loaded: (docs, pending, failed, completed, processing, error) {
        if (error != null) {
          return ErrorWidget(
            error: error,
            onRetry: () {
              context.read<UploadTaskBloc>().add(
                const UploadTaskEvent.getLocalDocs(),
              );
            },
          );
        }

        return SuccessWidget(docs: docs);
      },
      failure: (error) => ErrorWidget(error: error),
    );
  },
)
```

## الخاتمة

هذا النظام يوفر حلاً شاملاً ومنظماً لإدارة التوثيق المحلي والرفع للسيرفر باستخدام BLoC pattern. يمكن تخصيصه وتوسيعه حسب احتياجات المشروع المحددة.

النظام يتبع أفضل الممارسات في تطوير Flutter ويوفر تجربة مستخدم ممتازة مع مراقبة شاملة لعملية الرفع.
