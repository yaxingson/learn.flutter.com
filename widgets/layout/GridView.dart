import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return GridView.extent(
      padding: EdgeInsets.symmetric(vertical: 30),
      maxCrossAxisExtent: 180,
      crossAxisSpacing: 8,
      mainAxisSpacing: 24,
      childAspectRatio: 1.5,
      children: List.generate(51, (index){
        return Container(
          color: Color.fromARGB(5*(index+1), 0, 0, 0)
        );
      }),
    );
  }
}

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
