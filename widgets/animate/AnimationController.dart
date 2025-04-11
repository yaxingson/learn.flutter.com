import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> with TickerProviderStateMixin {
  final List<AnimationController> controllers = [];
  final List<Animation<double>> animations = [];
  
  @override
  initState() {
    super.initState();
    controllers..add(
      AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync:this
      )
    )..add(
      AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync:this
      )
    )..add(
      AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync:this
      )
    )..add(
      AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync:this
      )
    )..add(
      AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync:this
      )
    );
    
    animations..add(CurvedAnimation(parent: controllers[0], curve: Curves.bounceIn))
      ..add(CurvedAnimation(parent: controllers[1], curve: Curves.linear))
      ..add(CurvedAnimation(parent: controllers[2], curve: Curves.easeInToLinear))
      ..add(CurvedAnimation(parent: controllers[3], curve: Curves.easeInOutQuint))
      ..add(CurvedAnimation(parent: controllers[4], curve: Curves.easeIn));
  
    for(int i = 0; i < 5; i++) {
      animations[i] = Tween(
        begin: 100.0,
        end: 500.0
      ).animate(animations[i]);
    }
    
    animations[0].addListener((){
      setState((){});
    });
  }
  
  @override
  Widget build(BuildContext ctx) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            ElevatedButton(
              child: Text('start'),
              onPressed: (){
                for(int i = 0; i < 5; i++) {
                  controllers[i].forward();
                }    
              }
            ),
            ElevatedButton(
              child: Text('loop'),
              onPressed: (){
                for(int i = 0; i < 5; i++) {
                  controllers[i].forward();
                  
                  animations[i].addStatusListener((status) {
                    if(status == AnimationStatus.completed) {
                      controllers[i].reverse();
                    } else if(status == AnimationStatus.dismissed) {
                      controllers[i].forward();
                    }
                  });
                }   
              }
            ),
            ElevatedButton(
              child: Text('stop'),
              onPressed: (){
                for(int i = 0; i < 5; i++) {
                  controllers[i].stop();
                }   
              }
            ),
            
          ]
        ),
        SizedBox(height:5),
        Container(
          width: animations[0].value,
          height: 100,
          color: Colors.brown
        ),
        SizedBox(height: 5),
        Container(
          width: animations[1].value,
          height: 100,
          color: Colors.cyan
        ),
        SizedBox(height: 5),
        Container(
          width: animations[2].value,
          height: 100,
          color: Colors.orange
        ),
        SizedBox(height: 5),
        Container(
          width: animations[3].value,
          height: 100,
          color: Colors.lime
        ),
        SizedBox(height: 5),
        Container(
          width: animations[4].value,
          height: 100,
          color: Colors.purple
        ), 
      ]
    );
  }
}
