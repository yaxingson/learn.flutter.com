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

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  State<ExpansionPanelListDemo> createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<bool> _panelExpandedList = [false, false, false];
  
  @override
  Widget build(BuildContext ctx) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(8),
      child: ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          setState(() {
            _panelExpandedList[index] = !_panelExpandedList[index];
          });
        },
        children:[
          ExpansionPanel(
            isExpanded: _panelExpandedList[0],
            headerBuilder: (ctx, isExpanded) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width:12),
                  Text('HTML')
                ]
              );
            },
            body: Container(
              padding: EdgeInsets.all(12),
              child: Text('HTML (HyperText Markup Language) is the most basic building' +
              ' block of the Web. It defines the meaning and structure of web content.')
            ),
          ),
          ExpansionPanel(
            isExpanded: _panelExpandedList[1],  
            headerBuilder: (ctx, isExpanded) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width:12),
                  Text('CSS')
                ]
              );
            },
            body: Container(
              padding: EdgeInsets.all(12),
              child: Text('Cascading Style Sheets (CSS) is a stylesheet language used to describe' + 
                          ' the presentation of a document written in HTML or XML (including XML ' + 
                          ' dialects such as SVG, MathML or XHTML)')
            )
          ),
          ExpansionPanel(
            isExpanded: _panelExpandedList[2],  
            headerBuilder: (ctx, isExpanded) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width:12),
                  Text('JavaScript')
                ]
              );
            },
            body: Container(
              padding: EdgeInsets.all(12),
              child: Text('JavaScript (JS) is a lightweight interpreted (or just-in-time compiled)' + 
                          ' programming language with first-class functions')
            )
          ),
        ]
      )
    );  
  }
}
