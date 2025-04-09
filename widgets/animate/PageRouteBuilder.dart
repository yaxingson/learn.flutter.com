import 'package:flutter/material.dart';

class AnimatePageRoute extends PageRouteBuilder {
  final Widget widget;
  
  AnimatePageRoute(this.widget): super(
    transitionDuration: Duration(seconds:1),
    pageBuilder: (
      BuildContext context, 
      Animation<double> animation,
      Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
      final fadeTransition = FadeTransition(
        opacity: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(parent:animation, curve:Curves.easeInOutCubicEmphasized)),
        child: child
      );
      
      final scaleTransition = ScaleTransition(
        scale: Tween<double>(
          begin:0.0,
          end:1.0
        ).animate(CurvedAnimation(parent:animation, curve:Curves.easeInOutCubicEmphasized)),
        child:child
      );
        
      final rotationTransition = RotationTransition(
        turns: Tween(
          begin:0.0,
          end:1.0
        ).animate(CurvedAnimation(parent:animation, curve:Curves.easeInOutCubicEmphasized)),
        child:child
      );
        
      final slideTransition = SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
      return slideTransition;
    },
  );  
}
