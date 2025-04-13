class CheckboxListTileDemo extends StatefulWidget {
  State<CheckboxListTileDemo> createState() => _CheckboxListTileDemoState();
}

class _CheckboxListTileDemoState extends State<CheckboxListTileDemo> {
  bool _value = false;
  
  Widget build(ctx) {
    return CheckboxListTile(
      title: Text('Flutter'),
      subtitle:Text('Build for any screen'),
      secondary: Icon(Icons.abc),
      value: _value,
      selected:_value,
      onChanged: (value) {
        setState((){
          _value = value ?? false;
        });
      }
    );
  }
}
