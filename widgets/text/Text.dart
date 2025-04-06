import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '''The Text widget displays a string of text with single style. 
            The string might break across multiple lines or might all be displayed 
            on the same line depending on the layout constraints.
            ''',
            textAlign: TextAlign.left,
            textDirection: TextDirection.rtl,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 67, 200, 10),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              
            ),
            
          
          )
        )
      ),
    );
  }
}
