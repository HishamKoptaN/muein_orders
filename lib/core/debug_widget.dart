import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DebugTapTrigger extends StatefulWidget {
  final Widget child;
  final VoidCallback onTriggered;
  final Duration resetDuration;

  const DebugTapTrigger({
    super.key,
    required this.child,
    required this.onTriggered,
    this.resetDuration = const Duration(seconds: 1),
  });

  @override
  State<DebugTapTrigger> createState() => _DebugTapTriggerState();
}

class _DebugTapTriggerState extends State<DebugTapTrigger> {
  int _currentTap = 0;
  DateTime? _lastTap;

  void _handleTap() {
    final now = DateTime.now();

    if (_lastTap != null && now.difference(_lastTap!) > widget.resetDuration) {
      _currentTap = 0;
    }

    _lastTap = now;
    _currentTap++;

    if (_currentTap >= 3) {
      _currentTap = 0;
      widget.onTriggered();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kReleaseMode) return widget.child;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _handleTap,
      child: widget.child,
    );
  }
}
