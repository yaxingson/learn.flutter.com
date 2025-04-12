class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: ExpansionTile(
        initiallyExpanded: false,
        title:Text('Flutter'),
        leading: FlutterLogo(),
        backgroundColor: Colors.grey[300],
        children:[
          ListTile(
            title: Text('Get Started')
          ),  
          ListTile(
            title: Text('User Interface')
          ),  
          ListTile(
            title: Text('Beyond UI')
          ),  
          
        ]
       
      )    
    );
  }
}
