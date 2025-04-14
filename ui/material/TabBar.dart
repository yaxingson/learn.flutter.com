import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TabBarDemo extends StatefulWidget {
  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  initState() {
    super.initState();
    _tabController = TabController(
      length: 8,
      vsync:this
    );
  }
  
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller:_tabController,
          isScrollable:true,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          indicatorPadding: EdgeInsets.all(3),
          indicatorWeight:3,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs:[
            Tab(
              text:'直播'
            ),
            Tab(
              text:'推荐'
            ),
            Tab(
              text:'热门'
            ),
            Tab(
              text:'追番'
            ),
            Tab(
              text:'影视'
            ),
            Tab(
              text:'纪录片'
            ),
            Tab(
              text:'动画'
            ),
            Tab(
              text:'游戏'
            )
          ]
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children:[
          Center(child: Text('直播', style:TextStyle(fontSize:30))),
          Center(child: Text('推荐', style:TextStyle(fontSize:30))),
          Center(child: Text('热门', style:TextStyle(fontSize:30))),
          Center(child: Text('追番', style:TextStyle(fontSize:30))),
          Center(child: Text('影视', style:TextStyle(fontSize:30))),
          Center(child: Text('纪录片', style:TextStyle(fontSize:30))),
          Center(child: Text('动画', style:TextStyle(fontSize:30))),
          Center(child: Text('游戏', style:TextStyle(fontSize:30))),
        ]
      )
    );
  }
}


class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: false,
              indicatorColor: Colors.blue,
              automaticIndicatorColorAdjustment: false,
              indicatorWeight: 10,
              indicatorPadding: const EdgeInsets.only(bottom:10),
              indicator: const BoxDecoration(
                gradient:LinearGradient(colors:[Colors.red, Colors.green]),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.blue,
              labelStyle: const TextStyle(
                backgroundColor: Colors.amber,
                fontSize: 20,
              ),
              labelPadding: const EdgeInsets.all(5),
              unselectedLabelColor: Colors.deepPurple,
              dragStartBehavior: DragStartBehavior.start,
              overlayColor: const WidgetStatePropertyAll<Color>(Colors.grey),
              mouseCursor: SystemMouseCursors.allScroll,
              tabs: const [
                Tab(icon: Icon(Icons.directions_car), text:'Car'),
                Tab(icon: Icon(Icons.directions_transit), text:'Transit'),
                Tab(icon: Icon(Icons.directions_bike), text:'Bike'),
              ],
              onTap: (activeIndex) {
                print(activeIndex);
              },
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TabBarDemo());
}
