class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      color: Colors.black,
      child:Padding(
        padding: EdgeInsets.all(30),
        child:Text('Hello,Flutter', style:TextStyle(color:Colors.white))
      )
    );
  }
}
