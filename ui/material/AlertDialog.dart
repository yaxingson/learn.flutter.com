import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AndroidAndCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    Widget? dialog = null;
    
    if(Platform.isWindows) {
      dialog = AlertDialog(
          title:Text('AlertDialog'),
          content: Text(''),
          actions:[
            TextButton(
              onPressed: () {
                debugPrint("Android::AlertDialog");
                Navigator.of(ctx).pop();
              },
              child: Text('Accept')
            ),
  
          ]
        );
    } else {
      dialog = CupertinoAlertDialog(
          title:Text('AlertDialog'),
          content: Text(''),
          actions:[
            CupertinoDialogAction(
               onPressed: () {
                debugPrint("IOS::AlertDialog");
              },
              child: Text('Accept')
            ),
  
          ]
        );
    }    
    return dialog;
  }
}
