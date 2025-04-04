import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();      

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      home: Scaffold(
        appBar: AppBar(title: const Text('App')),
        body: const Center(
          child: Text('Hello, World')
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            showDialog(context: navigatorKey.currentState?.overlay?.context ?? context, 
                       builder: (_) => const AlertDialog(title: Text('alert dialog')));
            scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content:Text('snackbar')));
          },
          child: const Icon(Icons.add, color: Colors.pink)
        ),
      ),
      initialRoute:'/projects',
      routes:{
        '/projects':(_) => Text('projects'),
        '/center': (_) => Text('center')
      },
      onGenerateRoute:(setting) {
          
      } 
     
    );
  }
}
