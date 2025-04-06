import 'package:flutter/material.dart';

void main() {
  runApp(const FittedBoxDemo());
}

class FittedBoxDemo extends StatelessWidget {
  const FittedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children:[
            Container(
              width: 300,
              height: 300,
              color: Colors.black,
              child: FittedBox(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                child: Card(
                  child:Image.network('https://p1.ssl.qhimg.com/t01cb94cb8360aa0559.jpg'),
               )
              )
            )
          ]
        )
      ),
    );
  }
}
