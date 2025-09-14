import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:mubin_orders/features/auth/sign_in_view.dart';
import 'package:mubin_orders/generated/l10n.dart';

// External package bloc and unions
import 'package:sign_in/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_event.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_state.dart';

class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

// Since SignInEvent/SignInState are external union types, we register
// fallback fakes so mocktail can stub methods that use them. We will not
// instantiate concrete states here until constructors are confirmed.
class FakeSignInEvent extends Fake implements SignInEvent {}

class FakeSignInState extends Fake implements SignInState {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeSignInEvent());
    registerFallbackValue(FakeSignInState());
  });

  Widget buildLocalized(Widget child) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: child,
    );
  }

  group('SignInView widget', () {
    testWidgets('smoke: builds with injected MockSignInBloc', (tester) async {
      final bloc = MockSignInBloc();
      // Minimal stubbing: stream emits nothing; state remains default Fake.
      when(() => bloc.stream).thenAnswer((_) => const Stream.empty());
      // When the UI reads bloc.state initially, return a Fake state so it does not crash.
      when(() => bloc.state).thenReturn(FakeSignInState());

      await tester.pumpWidget(
        buildLocalized(
          SignInView(
            bloc: bloc,
          ),
        ),
      );

      // The widget builds; since state is not `loaded`, it renders SizedBox.
      expect(find.byType(SignInView), findsOneWidget);
    });

    testWidgets(
      'renders email & password fields when state is loaded (pending real constructors)',
      (tester) async {
        final bloc = MockSignInBloc();
        // TODO: Replace the following with real loaded state instance once available.
        // Example (pseudo):
        // final loaded = SignInState.loaded(
        //   email: EmailInput.pure(''),
        //   password: PasswordInput.pure(''),
        //   obscureText: true,
        //   formzSubmissionStatus: FormzSubmissionStatus.initial,
        // );
        // when(() => bloc.state).thenReturn(loaded);
        // whenListen(bloc, Stream.value(loaded), initialState: loaded);

        when(() => bloc.state).thenReturn(FakeSignInState());
        when(() => bloc.stream).thenAnswer((_) => const Stream.empty());
        await tester.pumpWidget(
          buildLocalized(SignInView(bloc: bloc)),
        );

        // Skipped until we can construct a real `loaded` state.
        // expect(find.byKey(const Key('email_field')), findsOneWidget);
        // expect(find.byKey(const Key('password_field')), findsOneWidget);
      },
      skip: true,
    );
  });
}
