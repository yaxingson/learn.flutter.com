import 'package:flutter/material.dart';

void main() {
  runApp(const AlignDemo());
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black,
            child: const Align(
              alignment: Alignment.topRight,
              widthFactor: 10,
              heightFactor: 2,
              child: Text('😃'),
            ),
          )
        )
      ),
    );
  }
}
