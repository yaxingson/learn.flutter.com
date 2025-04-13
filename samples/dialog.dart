class DialogDemo extends StatelessWidget {  
  Widget build(BuildContext ctx) {
    return Wrap(
      children:[
        TextButton(
          child: Text('SimpleDialog'),
          onPressed: () async {
            final _opt = await showDialog(
              context: ctx,
              builder: (ctx) {
                return SimpleDialog(
                  title:Text('SimpleDialog'),
                  children:[
                    SimpleDialogOption(
                      child: Text('React Native'),
                      onPressed: () {
                        Navigator.pop(ctx, 'react native');
                      }
                    ),
                    SimpleDialogOption(
                      child: Text('Flutter'),
                      onPressed: () {
                        Navigator.pop(ctx, 'flutter');
                      }
                    ),
                    SimpleDialogOption(
                      child: Text('Weex'),
                      onPressed: () {
                        Navigator.pop(ctx, 'weex');
                      }
                    ),
                  ]
                );
              }
            );
            
            debugPrint('opt: $_opt');
          }
        ),
        TextButton(
          child: Text('AlertDialog'),
          onPressed: () async {
            final action = await showDialog(
              context:ctx,
              builder: (ctx) {
                return AlertDialog(
                  title:Text('AlertDialog'),
                  content: Text('An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment'),
                  actions:[
                    OutlinedButton(
                      child: Text('cancel'),
                      onPressed: () {
                        Navigator.pop(ctx, 'cancel');
                      }
                    ),
                    OutlinedButton(
                      child: Text('ok'),
                      onPressed: () {
                        Navigator.pop(ctx, 'ok');
                      }
                    ),
                  ]
                );
              }
            );
            
            debugPrint('action: $action');
          }
        ),

        
      ]
    );
  }
}
