import 'package:flutter/material.dart';
import 'dart:ui';

class BackdropFilterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Stack(
      children:[
        Image.network('https://tse2-mm.cn.bing.net/th/id/OIP-C.joRKiAltmNrE5iJ_P2JR0AHaLG?rs=1&pid=ImgDetMain'),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX:5.0, sigmaY:5.0),
              child:Opacity(
                opacity:0.5,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  )
                )
              )
            )
          )
        )
        
      ]
    );
  }
}
