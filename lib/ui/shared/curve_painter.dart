import 'package:flutter/widgets.dart';

import 'colors.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double halfHeight = size.height * 0.50;

    Paint paint = Paint();
    var path = Path();
    path.lineTo(0.0, halfHeight);

    path.quadraticBezierTo(
        size.width / 6,
        halfHeight + 30, //point #3
        size.width / 2,
        halfHeight - 10); //point #4

    var secondControlPoint =
        Offset(size.width - size.width / 6, halfHeight - 40); //#point #5
    var secondEndPoint = Offset(size.width, halfHeight + 20); //point #6

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height); //move to top right #7
    path.lineTo(size.width, 0.0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    halfHeight = size.height * 0.47;
    path = Path();

    path.lineTo(0.0, (size.height * 0.50));

    path.quadraticBezierTo(
        size.width / 6,
        (size.height * 0.50) + 30, //point #3
        size.width / 2,
        (size.height * 0.50) - 10); //point #4

    secondControlPoint =
        Offset(size.width - size.width / 6, halfHeight - 40); //#point #5
    secondEndPoint = Offset(size.width, halfHeight + 20); //point #6

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height); //move to top right #7
    path.lineTo(size.width, 0.0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
