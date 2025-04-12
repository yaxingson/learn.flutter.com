class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Wrap(
      spacing: 10,
      runSpacing: 30,
      alignment: WrapAlignment.spaceBetween,
      children:[
        Chip(
          label:Text('rust'),
          avatar: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Text('')
          )
        ),
         Chip(
          label:Text('typescript'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('')
          )
        ),
         Chip(
          label:Text('python'),
          avatar: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text('')
          )
        ),
         Chip(
          label:Text('c++'),
          avatar: CircleAvatar(
            backgroundColor: Colors.indigo,
            child: Text('')
          )
        ),
         Chip(
          label:Text('dart'),
          avatar: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text('')
          )
        ),
        
      ]
      
    );
  }
}

class PhotoWall extends StatefulWidget {
  @override
  State<PhotoWall> createState() => _PhotoWallState();
}

class _PhotoWallState extends State<PhotoWall> {
  List<Widget> widgets = [];
  
  @override
  initState() {
    super.initState();
    widgets.add(
      GestureDetector(
        child: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(30),
          child: Icon(Icons.add)
        ),
        onTap: () {
          final len = widgets.length;
          if(len < 9) {
            setState(() {
              widgets.insert(len-1, Container(
                color: Colors.grey,
                margin: EdgeInsets.only(bottom:30),
                padding: EdgeInsets.all(30),
                child: Icon(Icons.image)
              ));
            });
          }
        }
      )
    ); 
  }
  
  @override
  Widget build(BuildContext ctx) {
    return Container(
      padding: EdgeInsets.all(30),
      width: MediaQuery.of(ctx).size.width,
      height: MediaQuery.of(ctx).size.height,
      color: Colors.grey[100],
      child: Wrap(
        children: widgets,
        spacing: 20
      )
    );
  }
}
