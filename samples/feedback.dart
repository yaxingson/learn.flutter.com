import 'package:flutter/material.dart';
import 'dart:async';

class ToastDialog extends Dialog {
  final IconData icon;
  final String text;
  final Duration duration;
  
  ToastDialog({required this.icon, required this.text, this.duration = const Duration(seconds:3)});
  
  @override
  Widget build(BuildContext ctx) {
    Timer(
      duration,
      () => Navigator.of(ctx).pop()
    );
    
    return Material(
      type: MaterialType.transparency,
      child: Center(
       child: Container(
          width: 100,
          height:100,
          decoration: BoxDecoration(
            color: Color(0xff000000),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(icon, color: Colors.white),
              SizedBox(height:5),
              Text(text, style: TextStyle(color: Colors.white))
            ]
          )
        )
      )
    );
  }
}

class FeedbackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Wrap(
        children:[
          ElevatedButton(
            child: Text('AlertDialog'),
            onPressed: () async {
              final String result = await showDialog(
                context:ctx,
                builder: (_) {
                  return AlertDialog(
                    title:Text('Warn'),
                    content:Text('Delete a file ?'),
                    actions:[
                      TextButton(
                        child: Text('cancel'),
                        onPressed: () {
                          Navigator.of(ctx).pop('cancel');
                        }
                      ),
                      TextButton(
                        child: Text('ok'),
                        onPressed: () {
                          Navigator.of(ctx).pop('ok');
                        }
                      )
                    ]
                  );
                }
              );
              
              debugPrint('result: $result');
            }
          ),
          ElevatedButton(
            child: Text('SimpleDialog'),
            onPressed: () async {
              final String lang = await showDialog(
                context:ctx,
                barrierDismissible:false,
                builder: (_) {
                  return SimpleDialog(
                    title:Text('Select a language ?'),
                    children:[
                      SimpleDialogOption(
                        child: Text('zh'),
                        onPressed: () {
                          Navigator.of(ctx).pop('zh');
                        }
                      ),
                      Divider(),
                      SimpleDialogOption(
                        child: Text('en'),
                        onPressed: () {
                          Navigator.of(ctx).pop('en');
                        }
                      ),
                      Divider(),
                      SimpleDialogOption(
                        child: Text('ja'),
                        onPressed: () {
                          Navigator.of(ctx).pop('ja');
                        }
                      ),
                    ]
                  );
                }
              );
              
              debugPrint('lang: $lang');
            }
          ),
          ElevatedButton(
            child: Text('ModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet(
                context:ctx,
                builder: (_) {
                  return Container(
                    width: double.infinity,
                    height: 80,
                    padding: EdgeInsets.all(8),
                    child: Text('system upgrading ...')
                  );
                }
              );
            }
          ), 
          ElevatedButton(
            child: Text('ToastDialog'),
            onPressed: () {
              showDialog(
                context:ctx,
                builder: (_) {
                  return ToastDialog(
                    icon: Icons.done,
                    text: 'success',
                    duration: Duration(seconds:5)
                  );
                }
              );
            }
          ), 
          
        ]
      )
    );    
  }
}
