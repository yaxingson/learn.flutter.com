import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({super.key});

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.menu_open)),
          leadingWidth: 56,
          automaticallyImplyLeading: true,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search), tooltip: 'search'),
            IconButton(
                onPressed: () {
                  debugPrint('');
                },
                icon: const Icon(Icons.add_outlined),
                tooltip: 'more'),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'home', icon: Icon(Icons.home)),
              Tab(text: 'setting', icon: Icon(Icons.settings)),
              Tab(text: 'center', icon: Icon(Icons.account_box)),
            ],
          ),
          elevation: 10,
          shadowColor: Colors.amber,
          shape: RoundedRectangleBorder(
            side:BorderSide(
              color: Colors.red,
              width: 3,
            ),
          ),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.pink,
            size: 60,
            opacity: 0.75,
          ),
          actionsIconTheme: IconThemeData(
            size: 30,
          ),
          primary:false,
          titleSpacing: 0,
          toolbarOpacity: 0.5,
          toolbarHeight: 300,
          
        ),
        body: Center(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text('Home')),
              Center(child: Text('Settings')),
              Center(child: Text('Account')),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const AppBarDemo());
}
