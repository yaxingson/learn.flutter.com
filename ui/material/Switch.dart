class SwitchDemo extends StatefulWidget {
  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _value = false;
  
  @override
  Widget build(BuildContext ctx) {
    return Switch(
      activeColor: Colors.lightBlue,
      activeTrackColor: Colors.grey,
      inactiveTrackColor: Colors.yellow,
      inactiveThumbColor: Colors.red,
      value: _value,
      onChanged: (value) {
        setState((){
          _value = value;
        });
      }
    );
  }
}
