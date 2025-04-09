import 'package:flutter/material.dart';

class FadeInImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return FadeInImage(
      placeholder: NetworkImage('https://bpic.588ku.com/back_our/20210204/bg/fb15ce4028646.png'),
      image:NetworkImage('https://tse4-mm.cn.bing.net/th/id/OIP-C.ELEvTWRWCFjm0cat7tB5fAAAAA?rs=1&pid=ImgDetMain')
    );
  }
}
