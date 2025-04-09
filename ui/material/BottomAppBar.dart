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

class BottomTabNavigator extends StatefulWidget {
  State<BottomTabNavigator> createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int _currentIndex = 0;
  final List<Widget> pages = [
    Scaffold(
      appBar: AppBar(title:Text('Home')),
      body: Center(
        child: Text('Home Page')
      )
    ),
    Scaffold(
      appBar: AppBar(title:Text('Category')),
      body: Center(
        child: Text('Category Page')
      )
    ),
    Scaffold(
      appBar: AppBar(title:Text('Member')),
      body: Center(
        child: Text('Member Page')
      )
    ),
    Scaffold(
      appBar: AppBar(title:Text('Mime')),
      body: Center(
        child: Text('Mime Page')
      )
    ),
    Scaffold(
      appBar: AppBar(title:Text('Upload')),
      body: Center(
       
      )
    ),
  ];
  
  
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        tooltip: 'upload',
        shape: CircleBorder(),
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (_)=>pages[4]));
        }
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
              icon: Icon(Icons.house),
              onPressed: () {
                setState((){ _currentIndex = 0; });
              }
            ),
            IconButton(
              icon: Icon(Icons.apps),
              onPressed: () {
                setState((){ _currentIndex = 1; });
              }
            ),
            IconButton(
              icon: Icon(Icons.aspect_ratio),
              onPressed: () {
               setState((){ _currentIndex = 2; });
              }
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState((){ _currentIndex = 3; });
              }
            ),
        
          ]
        )
      )
    );
  }
}

