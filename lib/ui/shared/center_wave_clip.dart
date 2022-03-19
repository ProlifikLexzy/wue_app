import 'package:flutter/widgets.dart';

class CenterWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.50);

    double halfHeight = size.height * 0.50;
    path.quadraticBezierTo(
        size.width / 6,
        halfHeight - 40, //point #3
        size.width / 2,
        halfHeight - 20); //point #4

    var secondControlPoint =
        Offset(size.width - size.width / 6, halfHeight); //#point #5
    var secondEndPoint = Offset(size.width, halfHeight - 30); //point #6

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height); //move to top right #7
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>
      false; //return false for the moment
}
