import 'package:flutter/material.dart';

void main() {
  runApp(const SizedBoxDemo());
}

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children:[
            Container(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Card(child: Text('card'))
              )
            ),
            Container(
              child: SizedBox.expand(
                child: Card(child: Text('card'))
              )
            ),
            Container(
              child: SizedBox.shrink(
                child: Card(child: Text('card'))
              )
            ),
            Container(
              child: SizedBox.fromSize(
                size: Size(300, 300),
                child: Card(child: Text('card'))
              )
            ),
          ]
        )
      ),
    );
  }
}
