class FloatingActionButtonDemo extends StatelessWidget {
  final FloatingActionButton _extendedBtn = FloatingActionButton.extended(
    label:Text('Upload'),
    icon: Icon(Icons.add),
    backgroundColor: Colors.pink,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    onPressed: () {
      
    }
  );

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
