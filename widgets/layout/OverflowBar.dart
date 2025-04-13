class OverflowBarDemo extends StatelessWidget {
  @override
  Widget build(ctx) {
    return OverflowBar(
      children:[
        ElevatedButton(
          child: Text('rust'),
          onPressed: () {}
        ),
        ElevatedButton(
          child: Text('go'),
          onPressed: () {}
        ),
        ElevatedButton(
          child: Text('javascript'),
          onPressed: () {}
        ),
        ElevatedButton(
          child: Text('python'),
          onPressed: () {}
        ),
        ElevatedButton(
          child: Text('dart'),
          onPressed: () {}
        ),
        
      ]
    );
  }
}
