import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Card(
          child: Column(
            children:[
              ListTile(
                title: Text('rust'),
                subtitle: Text(''),
                leading: Icon(Icons.ac_unit)
              ),
              Divider(),
              ListTile(
                title: Text('python'),
                subtitle: Text(''),
                leading: Icon(Icons.article_outlined)
              ),
              Divider(),
              ListTile(
                title: Text('dart'),
                subtitle: Text(''),
                leading: Icon(Icons.add_a_photo)
              ),
              
              
            ]
          )
        )
      ),
    );
  }
}
