import 'package:flutter/material.dart';

void main() {
  runApp(const PaddingDemo());
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children:[
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:30, right: 30),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue
                    )
                  )
                ]
              ),
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.teal
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.pink
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.cyan
                    )
                  )
                ]
               ),
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.deepOrange
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:50),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.indigo
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.purple
                    )
                  )
                ]
               )
            ]
          )
        )
      ),
    );
  }
}
