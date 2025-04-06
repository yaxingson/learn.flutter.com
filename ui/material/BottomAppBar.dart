import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home')
      )
    );
  }
}

class CategoryScreen extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Category')
      )
    );
  }
}

class MimeScreen extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Mime')
      )
    );
  }
}

class Demo extends StatefulWidget {
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _currentIndex = 0;
  List<Widget> screens = [];

  @override
  initState() {
    super.initState();
    screens..add(HomeScreen())..add(CategoryScreen())..add(MimeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Bottom Navigation Bar',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: screens[_currentIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          tooltip:'click',
          child: Icon(Icons.home)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              IconButton(
                icon:Icon(Icons.ac_unit),
                onPressed: (){
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              IconButton(
                icon:Icon(Icons.accessibility_new_rounded),
                onPressed: (){
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              IconButton(
                icon:Icon(Icons.access_time_outlined),
                onPressed: (){
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              )
            ]
          )
        ),
      ),
    );
  }
}

void main() {
  runApp(Demo());
}
