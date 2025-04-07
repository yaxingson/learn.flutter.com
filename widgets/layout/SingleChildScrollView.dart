
class SingleChildScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8),
      reverse: true,
      physics: BouncingScrollPhysics(),
      child: Column(
        children: List.generate(10, (index)=>Container(
          height: 150,
          margin: EdgeInsets.only(bottom: 8),
          color: Color.fromARGB(25*(index+1), 0, 0, 0)
        ))
      ),
    );
  }
}
