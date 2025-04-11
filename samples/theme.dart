import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData default = ThemeData(
    primaryColor: Colors.lightBlue,
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Colors.green,
      ),

    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      height: 80,
    ),
    iconTheme: IconThemeData(
      color: Colors.teal,
      size: 30,

    )
  );
  static final ThemeData light = ThemeData();
  static final ThemeData dark = ThemeData();
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.default,
      darkTheme: CustomTheme.dark,
      home: Scaffold(
        appBar: AppBar(
          title:Text('Welcome to flutter!'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children:[
            ElevatedButton(
              child: Text('ElevatedButton'),
              onPressed: () {
                
              }
            ),
            Text(
              'Hello,World',
              style: Theme.of(context).textTheme.bodyMedium
            ),
            Row(
              children:[
                Icon(Icons.person),
                Icon(Icons.airlines, color: Colors.deepPurple),
                Theme(
                  data: ThemeData(
                     iconTheme: IconThemeData(
                      color: Colors.pink,
                      size: 50,
                    )
                  ),
                  child: Icon(Icons.add),
                ),
              ]
            ),
            
          ]
        )
      ),
    );
  }
}

main() => runApp(App());
