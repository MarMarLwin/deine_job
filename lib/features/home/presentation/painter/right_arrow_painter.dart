import 'package:flutter/material.dart';

class RightArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    paint.color = Colors.grey.withOpacity(0.3);
    path.moveTo(size.width * 0.25, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.75,
        size.width * 0.55, size.height * 0.98);

    path.moveTo(size.width * 0.55, size.height * 0.94);
    path.quadraticBezierTo(
        size.width * 0.57, size.height, size.width * 0.54, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
