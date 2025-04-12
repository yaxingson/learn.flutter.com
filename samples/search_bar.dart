import 'package:flutter/material.dart';

final List<String> _dataset = [
  'ai伙伴',
  'a股',
  'a股今日行情',
  'ai是什么意思',
  '奥迪a6'
];

final List<String> _suggestions = [
  '安宁和睦 繁荣发展 交融相亲',
  '中国零售巨头集体出手',
  '河南出现15级大风 落地窗被整扇拔掉',
  '北京大风进入最强时段',
  '升至125%后 为何中国不陪了'
];

class SearchBarDemoDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(ctx) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          this.query = '';
        }
      ),
      
    ];
  }
  
  @override
  Widget? buildLeading(ctx) {
    return IconButton(
      icon:Icon(Icons.arrow_forward),
      onPressed: () {
        this.close(ctx, '');
      }
    );
  }
  
  @override
  Widget buildResults(ctx) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(query),
    );
  }
  
  @override
  Widget buildSuggestions(ctx) {
    final results = query.isEmpty 
        ? _suggestions
        : _dataset.where((item)=>item.startsWith(query)).toList(); 
    
    
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text(results[index]),
        );
      },
    );
  }
}


class SearchBarDemo extends StatefulWidget {
  @override
  State<SearchBarDemo> createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.grey[100],
        actions:[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context:ctx, delegate: SearchBarDemoDelegate());
            }
          )
        ]
      ),
      
    );
  }
}
