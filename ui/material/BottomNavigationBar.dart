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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize:30,
          fixedColor: Colors.lightBlue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.amber),
              activeIcon:Icon(Icons.home, color: Colors.amber),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business, color: Colors.indigo),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.cyan),
              label: 'Mime',
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (currentIndex) {
            setState((){
              this._currentIndex = currentIndex;
            });
            
          }
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
  ];
  
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label:'category'

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.aspect_ratio),
            label:'member'

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'mime'
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (currentIndex) {
          setState((){
            _currentIndex = currentIndex;
          });
        }
      )
    );
  }
}
