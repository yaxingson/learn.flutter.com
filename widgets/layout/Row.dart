import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          textDirection: TextDirection.rtl,
          children:[
            Expanded(child: ElevatedButton(onPressed: (){}, child: Text('dart'))),
            Expanded(child: ElevatedButton(onPressed: (){}, child: Text('rust'))),
            Expanded(child: ElevatedButton(onPressed: (){}, child: Text('go'))),
            Expanded(child: ElevatedButton(onPressed: (){}, child: Text('python'))),
            Expanded(child: ElevatedButton(onPressed: (){}, child: Text('typescript'))),
            
          ],
        ),
      ),
    );
  }
}
