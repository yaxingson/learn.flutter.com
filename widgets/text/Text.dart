import 'package:flutter/material.dart';

Text.rich(
  TextSpan(
    children:[
      TextSpan(
        text:'H',
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
        ),
      ),
      TextSpan(
        text:'ello, '
      ),
      TextSpan(
        text:'flutter',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,
          color: Colors.orange,
        )
      ),
      WidgetSpan(
        child: Icon(Icons.emoji_emotions)
      )
    ]
  ),
)

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
            textScaler: TextScaler.linear(1.5),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily:'',
              color: Color.fromARGB(255, 67, 200, 10),
              letterSpacing: 5,
              wordSpacing: 8,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.amber,
            ),
          
          )
        )
      ),
    );
  }
}
