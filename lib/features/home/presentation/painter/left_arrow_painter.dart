import 'package:flutter/material.dart';

class LeftArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    paint.strokeWidth = 2;
    paint.color = Colors.grey.withOpacity(0.3);
    path.moveTo(size.width * 0.55, 0);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.30,
        size.width * 0.26, size.height * 0.38);
    // path.quadraticBezierTo(size.width * 0.125, size.height * 0.45,
    //     size.width * 0.09, size.height * 0.70);
    path.moveTo(size.width * 0.27, size.height * 0.34);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.38,
        size.width * 0.27, size.height * 0.43);
    // path.quadraticBezierTo(size.width * 0.11, size.height * 0.68,
    //     size.width * 0.14, size.height * 0.67);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
