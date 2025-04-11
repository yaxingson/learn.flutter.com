 class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      height:double.infinity,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children:[
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.amber
            ),
          ),
          Spacer(flex:1),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blue
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.indigo
            ),
          ),
        ]
      )
    );
  }
}
