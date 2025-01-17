import 'package:flutter/cupertino.dart';

class SignUpClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.9);
    path.quadraticBezierTo(0.0, size.height, size.width * 0.1, size.height);

    path.lineTo(size.width * 0.9, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height * 0.9);

    path.lineTo(size.width, size.height * 0.3);
    path.quadraticBezierTo(size.width, size.height * 0.3 - 20, size.width - 20, size.height* 0.3 - 27);

    path.lineTo(50.0, 15.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0, 50.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}