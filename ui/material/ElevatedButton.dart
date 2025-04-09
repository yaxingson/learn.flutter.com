import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return ElevatedButton(
      child: Text('ElevatedButton'),
      onPressed:(){
        
      },
      style: ElevatedButton.styleFrom(backgroundColor:Color(0xffffff00))
    );
  }
}
