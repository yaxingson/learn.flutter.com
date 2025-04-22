class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: Center(
            child: Tooltip(
      child: Icon(Icons.android),
      message: 'Android OS',
    )));
  }
}
