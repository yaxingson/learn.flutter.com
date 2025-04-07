
class CheckboxDemo extends StatefulWidget {
  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _value = false;
  
  @override
  Widget build(BuildContext ctx) {
    return Checkbox(
      activeColor: Colors.grey,
      checkColor: Colors.white,
      value: _value,
      onChanged: (currentValue) {
        setState((){
          _value = currentValue ?? _value;
        });
      }
    );
  }
}
