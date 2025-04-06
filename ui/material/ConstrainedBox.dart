import 'package:flutter/material.dart';

void main() {
  runApp(const ConstrainedBoxDemo());
}

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions:[
            UnconstrainedBox(
              child: Container(
                width: 18,
                height: 18,
                color: Colors.amber,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.add), iconSize: 18),
              )
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings),
            )
          ]
        ),
        body: Column(
          children:[
             ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 200,
                minHeight: 100,
                maxWidth: double.infinity,
                maxHeight: double.infinity,
              ),
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 50,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tight(Size(100, 100)),
              child: Container(
                color: Colors.pink,
                width: 100,
                height: 50,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width:50),
              child: Container(
                color: Colors.black,
                width: 100,
                height: 50,
              ),
            ),

          ]
        )
      ),
    );
  }
}
