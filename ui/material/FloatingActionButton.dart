class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      elevation: 0,
      onPressed: () {},
      shape: CircleBorder(),
    );
  }
}
