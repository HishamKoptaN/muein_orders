import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';

import 'package:mubin_orders/features/auth/forgot_password/present/views/forgot_password_view.dart';
import 'package:mubin_orders/core/di/dependency_injection.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_bloc.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_event.dart';
import 'package:sign_in/sign_in/present/bloc/sign_in_state.dart';

class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

void main() {
  Widget buildApp(Widget child) => MaterialApp(home: child);

  late MockSignInBloc mockBloc;

  setUp(() {
    mockBloc = MockSignInBloc();
    // Minimal stubs; state/stream not used for validation
    when(() => mockBloc.state).thenReturn(const SignInState.loading());
    when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());
    // Register the mock in DI so ForgotPasswordView can resolve it
    if (!getIt.isRegistered<SignInBloc>()) {
      getIt.registerSingleton<SignInBloc>(mockBloc);
    } else {
      getIt.unregister<SignInBloc>();
      getIt.registerSingleton<SignInBloc>(mockBloc);
    }
  });

  tearDown(() {
    if (getIt.isRegistered<SignInBloc>()) {
      getIt.unregister<SignInBloc>();
    }
  });

  testWidgets('ForgotPasswordView shows validation error for empty email', (tester) async {
    await tester.pumpWidget(buildApp(const ForgotPasswordView()));

    final sendButton = find.byType(ElevatedButton).first;
    expect(sendButton, findsOneWidget);
    await tester.tap(sendButton);
    await tester.pumpAndSettle();

    expect(find.text('الرجاء إدخال البريد الإلكتروني'), findsOneWidget);
  });
}
