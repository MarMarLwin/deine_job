import 'package:flutter/material.dart';

class StepsPainter extends CustomPainter {
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
    var paint3 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.grey.withOpacity(0.3);
    var path3 = Path()
      ..moveTo(size.width * 0.25, size.height * 0.2)
      // ..quadraticBezierTo(size.width * 0.3, size.height * 0.29,
      //     size.width * 0.4, size.height * 0.36)
      // ..quadraticBezierTo(size.width * 0.5, size.height * 0.43,
      //     size.width * 0.55, size.height * 0.55)

      ..quadraticBezierTo(size.width * 0.28, size.height * 0.26,
          size.width * 0.35, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.45, size.height * 0.33,
          size.width * 0.54, size.height * 0.53)
      ..moveTo(size.width * 0.55, size.height * 0.94)
      ..quadraticBezierTo(
          size.width * 0.57, size.height, size.width * 0.54, size.height * 0.4);

    canvas.drawPath(path3, paint3);

    // var paint1 = Paint()
    //   ..color = Colors.white
    // ..style = PaintingStyle.fill;

    // var path1 = Path()
    //   ..moveTo(size.width * 0.001, 0)
    //   ..quadraticBezierTo(size.width * 0.4, size.height * 0.2, size.width * 0.6,
    //       size.height * 0.1)
    //   ..quadraticBezierTo(
    //       size.width * 0.8, size.height * 0.01, size.width, size.height * 0.2)
    //   ..quadraticBezierTo(size.width, size.height * 0.1, size.width, 0);

    // canvas.drawPath(path1, paint1);

    // var path2 = Path()
    //   ..moveTo(size.width * 0.01, size.height)
    //   ..quadraticBezierTo(size.width * 0.4, size.height * 0.8, size.width * 0.6,
    //       size.height * 0.9)
    //   ..quadraticBezierTo(
    //       size.width * 0.8, size.height * 0.99, size.width, size.height * 0.8)
    //   ..quadraticBezierTo(
    //       size.width, size.height * 0.9, size.width, size.height);

    // canvas.drawPath(path2, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
