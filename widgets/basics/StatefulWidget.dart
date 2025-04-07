class StatefulWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidgetDemo> createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  int _count = 0;
  
  @override
  initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _count += 1;
          });
        },
        child: Text('$_count')
      )
    );
  }
}
