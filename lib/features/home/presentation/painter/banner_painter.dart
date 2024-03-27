import 'package:flutter/material.dart';

class BannerCurveContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(size.width * 0.2, size.height)
      ..quadraticBezierTo(
          size.width, size.height * 0.9, size.width, size.height * 0.9)
      ..quadraticBezierTo(
          size.width, size.height * 0.98, size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
