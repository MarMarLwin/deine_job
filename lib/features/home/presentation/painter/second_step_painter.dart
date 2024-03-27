import 'package:flutter/material.dart';

class SecondStepPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path1 = Path()
      ..moveTo(size.width * 0.001, 0)
      ..quadraticBezierTo(size.width * 0.4, size.height * 0.2, size.width * 0.6,
          size.height * 0.1)
      ..quadraticBezierTo(
          size.width * 0.8, size.height * 0.01, size.width, size.height * 0.2)
      ..quadraticBezierTo(size.width, size.height * 0.1, size.width, 0);

    canvas.drawPath(path1, paint);

    var path2 = Path()
      ..moveTo(size.width * 0.01, size.height)
      ..quadraticBezierTo(size.width * 0.4, size.height * 0.8, size.width * 0.6,
          size.height * 0.9)
      ..quadraticBezierTo(
          size.width * 0.8, size.height * 0.99, size.width, size.height * 0.8)
      ..quadraticBezierTo(
          size.width, size.height * 0.9, size.width, size.height);

    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
