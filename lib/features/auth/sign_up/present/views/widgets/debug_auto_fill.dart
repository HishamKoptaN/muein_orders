import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../bloc/sign_up_bloc.dart';

class DebugAutoFill extends StatefulWidget {
  final Widget child;
  const DebugAutoFill({super.key, required this.child});

  @override
  State<DebugAutoFill> createState() => _DebugAutoFillState();
}

class _DebugAutoFillState extends State<DebugAutoFill> {
  int _tapCount = 0;
  DateTime? _lastTap;

  void _handleTap(BuildContext context) {
    final now = DateTime.now();
    if (_lastTap != null &&
        now.difference(_lastTap!) > const Duration(seconds: 1)) {
      _tapCount = 0;
    }
    _lastTap = now;
    _tapCount++;
    debugPrint('Tap detected! Count: $_tapCount');
    if (_tapCount >= 3) {
      debugPrint('✅ Triple tap detected! Running login scenario...');
      _tapCount = 0;
      _runLoginScenario(context);
    }
  }

  void _runLoginScenario(BuildContext context) {
    debugPrint('🚀 Running Debug AutoFill Login with BLoC...');
    getIt<SignUpBloc>().add(
      const SignUpEvent.dataChanged(
        email: EmailInput.dirty('heshamkoptan@gmail.com'),
        name: GenericFormzInput.dirty('hisham'),
        phone: PhoneNumberInput.dirty('4567894566123'),
        password: PasswordInput.dirty('password'),
        confirmPassword: PasswordInput.dirty('Password123@'),
      ),
    );
    debugPrint('✅ AutoFill Login Done (via BLoC)');
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _handleTap(context),
      child: widget.child,
    );
  }
}
