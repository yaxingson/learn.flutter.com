import 'package:flutter/material.dart';

void main() {
  runApp(const AspectRatioDemo());
}

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: 500,
            color: Colors.black,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.pink,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
