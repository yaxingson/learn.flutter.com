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

class FlexLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children:[
        Container(
          height: 80,
          color:Color(0xffc6e2ff)
        ),
        Expanded(
          flex:1,
          child: Row(
            children:[
              Container(
                width: 120,
                color: Color(0xffd9ecff)
              ),
              Expanded(
                flex:1,
                child: Column(
                  children:[
                    Expanded(
                      flex:1,
                      child: Container(
                        color: Color(0xffecf5ff)
                      )
                    ),
                    Container(
                      height: 50,
                      color: Color(0xffc6e2ff)
                    )
                  ]
                )
              )
            ]
          )
        )
      ]
    );
  }
}
