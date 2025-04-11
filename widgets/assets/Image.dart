import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: 500,
            color: Colors.black,
            child: Image.network(
              'https://tse4-mm.cn.bing.net/th/id/OIP-C.FS6cei70mDKsbYoacKW9YAHaEu',
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topLeft,
              fit: BoxFit.cover,
              color: Colors.amber,
              colorBlendMode: BlendMode.colorDodge,
              repeat: ImageRepeat.noRepeat,
            )
          )
        )
      ),
    );
  }
}
