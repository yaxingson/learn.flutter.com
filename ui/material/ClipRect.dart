import 'package:flutter/material.dart';

void main() {
  runApp(const ClipRectDemo());
}

class ClipRectDemo extends StatelessWidget {
  const ClipRectDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ClipRect(
            clipper: MyCustomClipper(),
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 1,
              child: Image.network('https://p1.ssl.qhimg.com/t01cb94cb8360aa0559.jpg')
            )
          )
        )
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  const MyCustomClipper();

  @override
  Rect getClip(Size size) {
    return const Rect.fromLTRB(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
