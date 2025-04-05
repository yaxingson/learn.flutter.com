import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedPaddingDemo());
}

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({super.key});

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  double padding = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children:[
              Text('padding: $padding'),
              AnimatedPadding(
                duration: const Duration(seconds: 1),
                padding: EdgeInsets.all(padding),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                onEnd:() {
                  
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    padding = padding == 0.0 ? 50.0 : 0.0;
                  });
                },
                child: const Text('Press'),
              ),
            ]
          ),
        )
      ),
    );
  }
}
