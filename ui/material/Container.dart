import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix4;

void main() {
  runApp(const ContainerDemo());
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 500,
//             color: Colors.black,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors:[
                  Colors.red,
                  Colors.blue,
                ]
              )
            ),
            constraints: BoxConstraints(maxWidth: 250),
            transform: Matrix4.rotationZ(0.3),
            transformAlignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(30),
              color: Colors.green,
              child: const Text('text', style: TextStyle(color: Colors.white, fontSize: 30))
            )
          )
        ),
      ),
    );
  }
}
