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
