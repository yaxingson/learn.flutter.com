class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      color: Colors.black,
      child: Align(
        widthFactor: 10,
        heightFactor:10,
        alignment: Alignment(0, 0),
        child: Icon(Icons.apple, size:50, color: Colors.green[500])
      )
    );
  }
}
