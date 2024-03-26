import 'package:flutter/material.dart';

class BannerCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * .70);
    path.quadraticBezierTo(
        0, size.height * .60, size.width * .1565, size.height * .60);
    path.lineTo(size.width * .60, size.height * .60);
    path.quadraticBezierTo(size.width * .69, size.height * .60,
        size.width * .70, size.height * .50);
    path.lineTo(size.width * .70, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
