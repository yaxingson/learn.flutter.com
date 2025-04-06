import 'package:flutter/material.dart';

void main() {
  runApp(const ClipOvalDemo());
}

class ClipOvalDemo extends StatelessWidget {
  const ClipOvalDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ClipOval(
            clipper: MyCustomClipper(),
            child: Image.network('https://p1.ssl.qhimg.com/t01cb94cb8360aa0559.jpg'),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(50, 50, size.width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
