class SwitchListTileDemo extends StatefulWidget {
  State<SwitchListTileDemo> createState() => _SwitchListTileDemoState();
}

class _SwitchListTileDemoState extends State<SwitchListTileDemo> {
  bool _value = false;
  
  Widget build(ctx) {
    return SwitchListTile(
      title:Text('Flutter'),
      subtitle: Text('Build apps for any screen.'),
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      }
    );
  }
}
