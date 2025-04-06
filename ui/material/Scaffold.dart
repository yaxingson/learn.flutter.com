import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class ScaffoldDemo extends StatelessWidget {
  const ScaffoldDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu_open)),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/404');
            },
            child: const Text('goto')
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            showDialog(context:context, builder: (_) => const AlertDialog(title: Text('alert dialog')));
          },
          child: const Icon(Icons.add, color: Colors.blue)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        persistentFooterButtons: [
           TextButton(onPressed:(){}, child:Text('ok')),
           TextButton(onPressed:(){}, child:Text('cancel')),
        ],
        drawer: Drawer(
          child: Center(child: Text('drawer')),
        ),
        onDrawerChanged: (opened) {
          print(opened);
        },
        endDrawer: Drawer(
          child: Center(child: Text('drawer')),
        ),
        drawerDragStartBehavior: DragStartBehavior.start,
        drawerScrimColor: Colors.green,
        drawerEdgeDragWidth: 200,
        drawerEnableOpenDragGesture:false,
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
          currentIndex: 0,
          onTap: (currentIndex) {
            print(currentIndex);
            
          },
        ),
        bottomSheet: Row(
          children:[
            TextButton(onPressed:() {}, child: Text('send')),
          ]
        ),
        backgroundColor: Colors.teal,
        resizeToAvoidBottomInset:true,
        primary: true,
        extendBody:false
    
      )
    );
  }
}

void main() {
  runApp(const ScaffoldDemo());
}
