import 'package:flutter/widgets.dart';

import 'colors.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.50);

    path.quadraticBezierTo(size.width * 0.2, size.height * 0.575,
        size.width * 0.8, size.height * 0.5167);

    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    paint.color = colorTwo;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
