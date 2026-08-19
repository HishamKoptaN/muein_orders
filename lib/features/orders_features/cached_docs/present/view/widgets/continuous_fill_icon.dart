import 'package:flutter/material.dart';

class ContinuousFillIcon extends StatefulWidget {
  final IconData icon;
  final Color color;

  const ContinuousFillIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  State<ContinuousFillIcon> createState() => _ContinuousFillIconState();
}

class _ContinuousFillIconState extends State<ContinuousFillIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [widget.color, widget.color.withOpacity(0.1)],
              stops: [_controller.value, _controller.value],
            ).createShader(rect);
          },
          child: Icon(widget.icon, size: 20, color: Colors.white),
        );
      },
    );
  }
}
