import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      child:Text('text'),
      onTap:() {
        debugPrint('onTap');
      },
      onDoubleTap: () {
        debugPrint('onDoubleTap');
      },
      onLongPress: () {
        debugPrint('onLongPress');
      }
    );
  }
}
