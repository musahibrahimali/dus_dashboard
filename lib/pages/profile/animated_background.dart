import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key});

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  Color brandSurface = const Color(0xFF122523);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);
    _colorAnimation = ColorTween(
      begin: brandSurface,
      end: brandSurface.withOpacity(0.8),
    ).animate(_controller);
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
        return Stack(
          children: <Widget>[
            Container(
              color: _colorAnimation.value,
            ),
            Positioned.fill(
              child: CustomPaint(
                painter: ShapesPainter(_controller.value),
              ),
            ),
          ],
        );
      },
    );
  }
}

class ShapesPainter extends CustomPainter {
  final double animationValue;

  ShapesPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = Colors.white.withOpacity(0.3);
    final double radius = size.width * 0.3;

    for (int i = 0; i < 6; i++) {
      final double angle = i * math.pi / 3;
      final double circleOffsetX = size.width / 2 + radius * math.cos(animationValue * math.pi * 2 + angle);
      final double circleOffsetY = size.height / 2 + radius * math.sin(animationValue * math.pi * 2 + angle);

      canvas.drawCircle(Offset(circleOffsetX, circleOffsetY), 20, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
