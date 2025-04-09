import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final List<String> movies = ['肖申克的救赎', '霸王别姬', '泰坦尼克号', 
          '阿甘正传', '千与千寻', '美丽人生', '这个杀手不太冷'];
    
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: movies.length,
      itemBuilder: (ctx, index) {
        return ListTile(
          leading: Container(width: 50, height: 120, color: Colors.grey),
          title: Text(movies[index]),
          subtitle: Text('此处省略三万字...'),
          minTileHeight: 150,
          titleAlignment: ListTileTitleAlignment.top,
          selected: index == 3,
          selectedTileColor: Colors.lightBlue[100],
          
        );
      },
      separatorBuilder: (ctx, index) {
        return Divider();
      },
    
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (ctx, index) {
        return Container(
          color: Colors.lightBlue,
          margin: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Image.network(movies[index].poster, width: 100),
              SizedBox(height: 5),
              Text(movies[index].name)
            ]
          )
        );
      }
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 200, // Provide a specific width for each item
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.air),
                      title: Text('air'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200, // Provide a specific width for each item
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.add_a_photo),
                      title: Text('add a photo'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200, // Provide a specific width for each item
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.add_box),
                      title: Text('add box'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
