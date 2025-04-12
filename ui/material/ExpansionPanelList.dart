class ExpansionPanelListDemo extends StatefulWidget {
  @override
  State<ExpansionPanelListDemo> createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<Map<String, dynamic>> items = List.generate(10, 
    (index)=>({'index':index, 'defaultExpanded':false})).toList();
  
  @override
  Widget build(ctx) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, expanded) {
            setState(() {
              items.forEach((item){             
                if(item['index'] == index) { 
                  item['defaultExpanded'] = !item['defaultExpanded'];
                }
              });
            });
          },
          children: items.map((item){
            final index = item['index'];
            
            return ExpansionPanel(
              headerBuilder: (ctx, expanded){
                return ListTile(
                  title: Text('Header -$index')
                );
              },
              body: ListTile(
                title: Text('body -$index')
              ),
              isExpanded: item['defaultExpanded']
            );
          }).toList()
    
        )
      )
    );
  }
}
