import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../core/app_export.dart';

class Progress extends StatefulWidget {
  const Progress({super.key, required this.progress});
  final double progress;

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    _animation = Tween<double>(begin: 0, end: widget.progress)
        .chain(CurveTween(curve: Curves.fastOutSlowIn))
        .animate(_animationController)
      ..addListener(() {
        setState(() {});

        if (_animation.status == AnimationStatus.completed) {
          _animationController.stop();
        }
      });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CustomPaint(
              painter: CircularProgressPaint(
                  progress: _animation.value //widget.progress,
                  ),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 60,
                child: Text('${_animation.value.toInt()}%',
                    style: TextThemeHelper.labelLargeGray800.copyWith(
                        color: const Color(0XFF59B200),
                        fontWeight: FontWeight.w500)),
              ),
            );
          }),
    );
  }
}

class CircularProgressPaint extends CustomPainter {
  final double progress;
  CircularProgressPaint({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2.5;
    final paint = Paint()
      ..color = const Color(0XFFD6FFAE)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final arcpaint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0XFF59B200), Color(0XFF59B200), Color(0XFF59B200)],
      ).createShader(const Rect.fromLTWH(40, 100, 300, 100))
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;
    const startAngle = -math.pi / 2;
    double sweepAngle = 2 * -math.pi * (progress / 100);
    canvas.drawCircle(center, radius, paint);
    canvas.drawArc(
        Rect.fromCircle(
          center: center,
          radius: radius,
        ),
        startAngle,
        sweepAngle,
        false,
        arcpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
