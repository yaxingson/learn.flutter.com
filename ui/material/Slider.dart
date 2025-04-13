class SliderDemo extends StatefulWidget {
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _value = 30.0;
  
  Widget build(ctx) {
    return Slider(
      min: 0.0,
      max:100.0,
      activeColor: Colors.green,
      inactiveColor: Colors.grey,
      value: _value,
      label: '$_value',
      onChanged: (currentValue) {
        setState(() {
          _value = currentValue;
        });
      }
    );
  }
}
