import 'package:flutter/material.dart';

void main() {
  runApp(const OverflowBoxDemo());
}

class OverflowBoxDemo extends StatelessWidget {
  const OverflowBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children:[
            Container(
              padding: const EdgeInsets.all(50),
              width: 300,
              height: 300,
              color: Colors.black,
              child: OverflowBox(
                alignment: Alignment.topRight,
                maxWidth: 500,
                maxHeight: 500,
                child: Container(
                  width: 800,
                  height: 800,
                  color: Colors.pink,
                )
              )
              
            )
          ]
        )
      ),
    );
  }
}
