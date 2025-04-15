import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix4;

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      color: Colors.black,
      child:Padding(
        padding: EdgeInsets.all(30),
        child:Text('Hello,Flutter', style:TextStyle(color:Colors.white))
      )
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: 300,
      height: 300,
      // color: Theme.of(ctx).primaryColor,
      decoration: BoxDecoration(
        color: Color.fromRGBO(56, 100, 78, 0.75),
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 5,
            style: BorderStyle.solid,
          )
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            color:Colors.indigo,
            blurRadius: 10,
            spreadRadius: 10,
          )
        ],
        shape: BoxShape.rectangle,
        gradient: RadialGradient(
          colors:[
            Colors.orange,
            Colors.pink,
          ]
        ),
        image: DecorationImage(
          image: NetworkImage('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2917594343.jpg'),
          alignment: Alignment.center,
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
        ),
      ),
    
    );
  }
}


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
            transformAlignment: Alignment.center,
            transform: Matrix4.rotationZ(45),
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
