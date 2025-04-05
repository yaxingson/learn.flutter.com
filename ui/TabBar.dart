import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

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
