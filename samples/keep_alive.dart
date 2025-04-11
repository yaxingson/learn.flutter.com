import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  final bool wantKeepAlive;
  
  Page({Key? key, this.wantKeepAlive=true}): super();
  
  @override
  State<Page> createState() => _PageState(wantKeepAlive);
}

class _PageState extends State<Page> with AutomaticKeepAliveClientMixin {
  final bool _wantKeepAlive;
  int _count = 0;
  
  _PageState(this._wantKeepAlive);
  
  _inc() {
    setState((){ _count++; });
  }
  
  @override
  bool get wantKeepAlive => _wantKeepAlive;
  
  @override
  Widget build(BuildContext ctx) {
    super.build(ctx);
    return Center(
      child: ElevatedButton(
        child: Text('+ $_count'),
        onPressed: _inc
      )
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  State<KeepAliveDemo> createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
  TabController? _controller;
  
  @override
  initState() {
    super.initState();
    _controller = TabController(
      length: 3,
      vsync:this,
    );
  }
  
  @override
  dispose() {
    super.dispose();
    _controller?.dispose();
  }
 
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar:AppBar(
        bottom: TabBar(
          controller: _controller,
          tabs:[
            Tab(icon:Icon(Icons.abc)),
            Tab(icon:Icon(Icons.accessibility)),
            Tab(icon:Icon(Icons.account_box)),
          ]
        )
      ),
      body: TabBarView(
        controller:_controller,
        children:[
          Page(),
          Page(wantKeepAlive:false),
          Page(),
          
        ]
      )
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KeepAliveDemo()
    );
  }
}

main() => runApp(App());
