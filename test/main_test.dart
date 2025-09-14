import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubin_orders/app.dart';
import 'package:mubin_orders/core/performance/performance_manager.dart';
import 'package:mubin_orders/features/language/bloc/language_bloc.dart';
import 'package:mubin_orders/main.dart';

class MockLanguageBloc extends MockBloc<LanguageEvent, LanguageState>
    implements LanguageBloc {}

void main() {
  late MockLanguageBloc mockLanguageBloc;
  final TestWidgetsFlutterBinding binding =
      TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    // Initialize any required bindings or mocks
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  setUp(() {
    mockLanguageBloc = MockLanguageBloc();
    when(() => mockLanguageBloc.state).thenReturn(LanguageState.initial());
  });

  testWidgets('App initializes with splash screen', (tester) async {
    // Arrange
    when(() => mockLanguageBloc.state).thenReturn(LanguageState.initial());

    // Act
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<LanguageBloc>(
            create: (context) => mockLanguageBloc,
          ),
        ],
        child: const MubinOrdersApp(),
      ),
    );

    // Assert
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('ErrorWidgetBuilder shows error UI', (tester) async {
    // Arrange
    final exception = Exception('Test Error');
    final stackTrace = StackTrace.current;

    // Create a widget that will throw an error
    final errorWidget = Builder(
      builder: (context) {
        // This will be caught by the error handler
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return const Material(
            child: Center(
              child: Text('Error Occurred'),
            ),
          );
        };

        // Throw an error
        Error.throwWithStackTrace(exception, stackTrace);
      },
    );

    // Act & Assert
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<LanguageBloc>(
            create: (context) => mockLanguageBloc,
          ),
        ],
        child: MaterialApp(
          home: errorWidget,
        ),
      ),
    );

    // Verify error widget is shown
    expect(find.text('Error Occurred'), findsOneWidget);
  });

  testWidgets('Performance optimization runs after first frame',
      (tester) async {
    // Arrange
    bool optimizeImageCacheCalled = false;
    final originalOptimizeImageCache = PerformanceManager.optimizeImageCache;
    // PerformanceManager.optimizeImageCache = () {
    //   optimizeImageCacheCalled = true;
    // };

    // Act
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<LanguageBloc>(
            create: (context) => mockLanguageBloc,
          ),
        ],
        child: const MubinOrdersApp(),
      ),
    );

    // Assert - First frame
    expect(optimizeImageCacheCalled, isFalse);

    // Act - Pump a frame to trigger post-frame callback
    await tester.pump();

    // Assert - Callback should be called after first frame
    expect(optimizeImageCacheCalled, isTrue);

    // Cleanup
    // PerformanceManager.optimizeImageCache = originalOptimizeImageCache;
  });
}
