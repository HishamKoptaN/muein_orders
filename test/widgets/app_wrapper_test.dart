import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mubin_orders/features/language/bloc/language_bloc.dart';

import 'package:mubin_orders/core/app/app_widget.dart';

class MockLanguageBloc extends MockBloc<LanguageEvent, LanguageState>
    implements LanguageBloc {}

void main() {
  late MockLanguageBloc mockLanguageBloc;

  setUp(() {
    mockLanguageBloc = MockLanguageBloc();
  });

  testWidgets('MubinOrdersAppWrapper initializes with providers', (tester) async {
    // Arrange
    when(() => mockLanguageBloc.state).thenReturn( LanguageState.initial());

    // Act
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<LanguageBloc>(
            create: (context) => mockLanguageBloc,
          ),
          // Add other mock providers as needed
        ],
        child: const MubinOrdersAppWrapper(),
      ),
    );

    // Assert
    expect(find.byType(MubinOrdersAppWrapper), findsOneWidget);
    verify(() => mockLanguageBloc.add(const LanguageEvent.getSavedLanguage()))
        .called(1);
  });
}
