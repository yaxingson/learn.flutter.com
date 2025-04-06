import 'package:flutter/material.dart';

void main() {
  runApp(const CenterDemo());
}

class CenterDemo extends StatelessWidget {
  const CenterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 500,
          height: 500,
          color: Colors.black,
          child: Center(
            widthFactor: 5,
            heightFactor: 5,
            child: Container(
              color: Colors.white,
              child: const Text('😊')
            )
          )
        )
      ),
    );
  }
}
