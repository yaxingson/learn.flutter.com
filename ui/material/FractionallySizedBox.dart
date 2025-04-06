import 'package:flutter/material.dart';

void main() {
  runApp(const FractionallySizedBoxDemo());
}

class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 500,
            color: Colors.black,
            alignment: Alignment.center,
            child: FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Container(
                color:Colors.pink,
              )
            )
          )
        ),
      ),
    );
  }
}
