import 'package:flutter/material.dart';

class BottomArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height - 50);

    final controllerPoint = Offset(size.width / 2, size.height);
    final endPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        controllerPoint.dx, controllerPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}

class ClipPathDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children: [
        ClipPath(
          clipper: BottomArcClipper(),
          child: Container(height: 120, color: Colors.deepPurpleAccent),
        ),
      ],
    );
  }
}
