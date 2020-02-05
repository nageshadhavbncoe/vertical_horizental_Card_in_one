import 'package:flutter/material.dart';
import 'dart:math' as Math;
class FrontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SmileyPainter(),
    );
  }
}

class SmileyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = Math.min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    // Draw the body
    final paint = Paint();
    paint.color = Colors.blue;
    canvas.drawCircle(center, radius, paint);
    // Draw the mouth
    final smilePaint = Paint();
      smilePaint.style = PaintingStyle.stroke;
      smilePaint.strokeWidth = 10;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius / 2), 0,
        Math.pi,true, smilePaint);
    // Draw the eyes
    canvas.drawCircle(
        Offset(center.dx - radius / 2, center.dy - radius / 2), 10, Paint());
    canvas.drawCircle(
        Offset(center.dx + radius / 2, center.dy - radius / 2), 10, Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}