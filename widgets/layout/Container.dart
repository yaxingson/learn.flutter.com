import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(255, 0, 0, 0),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 30, left:50),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(width: 3.0, color:Colors.lightGreenAccent),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:[
                  Colors.brown,
                  Colors.indigo,
                  Colors.yellow
                ]
              ),
            
            ),
            child: Text('🤑')
          
          )
        )
      ),
    );
  }
}
