import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: FractionalOffset(0.5, 0.5),
          children:[
            CircleAvatar(
              radius: 250,
              backgroundImage: NetworkImage('https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg')
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
              )
            ),
            Positioned(
              top: 100,
              left: 100,
              child: Icon(Icons.add),
            ),
            
          ]
        )
      ),
    );
  }
}
