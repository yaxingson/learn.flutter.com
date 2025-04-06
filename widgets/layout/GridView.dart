import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          children:[
            Text('😀'),
            Text('😂'),
            Text('😃'),
            Text('😊'),
            Text('🙂'),
            Text('😚'),
          ]
        )
      ),
    );
  }
}
