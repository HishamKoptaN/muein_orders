# دليل اختبارات التطبيق

## المقدمة
هذا الدليل يوضح القواعد والإرشادات الصارمة لكتابة الاختبارات في المشروع. يجب اتباع هذه القواعد لضمان جودة وكفاءة الاختبارات.

## أنواع الاختبارات

### 1. اختبارات الوحدة (Unit Tests)
- **المسار**: `test/unit/`
- **الغرض**: اختبار الدوال والكلاسات المنطقية بشكل منعزل
- **القواعد**:
  - يجب أن تغطي 80% على الأقل من الكود
  - يجب أن تكون سريعة التنفيذ
  - يجب أن تكون مستقلة عن بعضها البعض
  - يجب أن تكون قابلة للتكرار

### 2. اختبارات الواجهة (Widget Tests)
- **المسار**: `test/widget/`
- **الغرض**: اختبار واجهة المستخدم وعناصرها
- **القواعد**:
  - اختبار كل ويدجت بشكل منفصل
  - استخدام `testWidgets` بدلاً من `test`
  - تجنب استخدام `setState` مباشرة في الاختبارات

### 3. اختبارات التكامل (Integration Tests)
- **المسار**: `integration_test/`
- **الغرض**: اختبار التدفق الكامل للتطبيق
- **القواعد**:
  - اختبار سيناريوهات المستخدم الكاملة
  - استخدام `IntegrationTestWidgetsFlutterBinding`
  - تجنب الاعتماد على حالات الاختبار الأخرى

## قواعد عامة

### تسمية الملفات
- `feature_name_test.dart` لاختبارات الوحدة
- `feature_name_widget_test.dart` لاختبارات الويدجت
- `feature_name_flow_test.dart` لاختبارات التكامل

### تسمية الدوال
- استخدم `should_expectedBehavior_when_stateUnderTest`
- مثال: `should_returnTrue_when_userIsAuthenticated`

### التنظيم
- استخدم `group` لتنظيم الاختبارات المتعلقة
- استخدم `setUp` و `tearDown` للإعداد والتنظيف
- استخدم `setUpAll` و `tearDownAll` للإعداد لمرة واحدة

## المكتبات الموصى بها

### للاختبارات
- `test`: للاختبارات الأساسية
- `mocktail`: لإنشاء كائنات وهمية
- `bloc_test`: لاختبار البلوك
- `mockito`: لإنشاء مكاتب وهمية

### للاختبارات التفاعلية
- `flutter_test`
- `integration_test`
- `flutter_driver` للاختبارات من طرف المستخدم النهائي

## أفضل الممارسات

### 1. اختبارات البلوك
- استخدم `blocTest` من حزمة `bloc_test`
- تأكد من تغطية جميع الحالات (States) والأحداث (Events)
- اختبر الحالات الأولية

### 2. اختبارات الريبوزيتوري
- استخدم Mocktail لإنشاء واجهات وهمية
- اختبر جميع الدوال بشكل منفصل
- تأكد من معالجة الأخطاء بشكل صحيح

### 3. اختبارات الواجهة
- استخدم `find.byType` و `find.byKey` للعثور على العناصر
- اختبر حالات التحميل والخطأ
- تأكد من صحة عرض البيانات

## أمثلة

### مثال على اختبار وحدة
```dart
group('Authentication Use Case', () {
  late MockAuthRepository mockAuthRepository;
  late LoginUseCase loginUseCase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase(mockAuthRepository);
  });

  test('should return user when login is successful', () async {
    // Arrange
    when(() => mockAuthRepository.login(any(), any()))
        .thenAnswer((_) async => Right(mockUser));
    
    // Act
    final result = await loginUseCase(Params(email: 'test@test.com', password: '123456'));
    
    // Assert
    expect(result, equals(Right(mockUser)));
    verify(() => mockAuthRepository.login('test@test.com', '123456'));
  });
});
```

### مثال على اختبار ويدجت
```dart
void main() {
  testWidgets('LoginPage should show error when login fails', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider(
          create: (context) => LoginBloc(authRepository: MockAuthRepository()),
          child: const LoginPage(),
        ),
      ),
    );

    // Tap the login button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that an error message is shown
    expect(find.text('Invalid credentials'), findsOneWidget);
  });
}
```

## التغطية
- استخدم `flutter test --coverage` لإنشاء تقرير التغطية
- استهدف تغطية لا تقل عن 80%
- ركز على تغطية المنطق المعقد

## المراجع
- [Flutter Testing Documentation](https://flutter.dev/docs/testing)
- [Bloc Testing](https://bloclibrary.dev/#/testing)
- [Mocktail Documentation](https://pub.dev/packages/mocktail)
