class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children:[
        TextButton(
          onPressed: null,
          onLongPress: null,
          child: Text('TextButton')
        ),
        ElevatedButton(
          onPressed:null,
          child: Text('ElevatedButton'),
        ),
        OutlinedButton(
          onPressed: null,
          child: Text('OutlinedButton'),
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
          ),
        ),
        
      ]
    );
  }
}
