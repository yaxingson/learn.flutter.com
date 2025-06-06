class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children:[
        TextButton(
          onPressed: null,
          onLongPress: null,
          child: Text('TextButton'),
          style: ButtonStyle(
            shadowColor: WidgetStateProperty.all(Colors.grey),
            elevation: WidgetStateProperty.all(5),
            side: WidgetStateProperty.all(BorderSide(
              color: Colors.black,
              width: 5,
            )),
            shape: WidgetStateProperty.all(StadiumBorder(
              side: BorderSide(
                color: Colors.black,
                width: 5,
              )
            )),
            minimumSize: WidgetStateProperty.all(Size(150, 80)),
            overlayColor: WidgetStateProperty.all(Colors.blue),
            backgroundColor: WidgetStateProperty.all(Colors.lightBlue),
            foregroundColor: WidgetStateProperty.resolveWith((state){
              if(state.contains(WidgetState.pressed)) {
                return Colors.grey;
              }
              return Colors.white;
            }),
            textStyle: WidgetStateProperty.all(TextStyle(
              fontSize: 18
            )),
          ),
        ),
        TextButton.icon(
          onPressed:() {
            
          },
          label: Text('inc'),
          icon: Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed:null,
          child: Text('ElevatedButton'),
        ),
        OutlinedButton(
          onPressed: null,
          child: Text('OutlinedButton'),
        ),
        Theme(
          data: Theme.of(ctx).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(vertical:3, horizontal:8),
              colorScheme: ColorScheme.fromSeed(seedColor:Colors.white),
            ),
          ),
          child: TextButton(
            child: Text('TextButton'),
            onPressed: () {
              
            }
          )
          
        ),
        
      ]
    );
  }
}
