class RadioDemo extends StatefulWidget {
  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  @override
  Widget build(BuildContext ctx) {
    return Radio(
      value: 0,
      groupValue: 0,
      onChanged: (currentValue) {
        
      }
    );
  }
}
