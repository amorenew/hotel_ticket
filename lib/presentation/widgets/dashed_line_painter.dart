import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final double dashWidth, dashSpace, strokeWidth;
  final Color color;

  DashedLinePainter({
    super.repaint,
    this.dashWidth = 9,
    this.dashSpace = 5,
    this.strokeWidth = 1,
    this.color = Colors.orange,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
