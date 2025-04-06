class DefaultTabControllerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            unselectedLabelColor: Colors.amber,
            tabs:[
              Tab(icon:Icon(Icons.abc_outlined)),
              Tab(icon:Icon(Icons.ac_unit_sharp)),
              Tab(icon:Icon(Icons.accessible))
            ]
          )
        ),
        body: TabBarView(
          children:[
            Text('abc_outlined'),
            Text('ac_unit_sharp'),
            Text('accessible')
          ]
        ),
      )
    );
  }
}
