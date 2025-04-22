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
      itemExtent: 30,
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

class ListViewDemo extends StatelessWidget {
  final List<Map<String, String>> constellations = [
    {
      'name': '白羊座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6535.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {
      'name': '金牛座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6540.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {
      'name': '双子座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6549.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {
      'name': '巨蟹座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6541.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {
      'name': '狮子座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6546.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {
      'name': '处女座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6536.jpg_wh860.jpg!/fh/300/quality/90',
    },
    {
      'name': '天秤座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6552.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {'name': '天蝎座', 'backgroundImage': 'https://ts1.tc.mm.bing.net/th/id/R-C.ea0d36e4b3cc97430e1eea70d6df3ce9?rik=MU3mBD1KV6%2fj%2bg&riu=http%3a%2f%2fcontent.pic.tianqistatic.com%2fxingzuo%2fimg%2f202204%2f29%2fd03b775d094ff990.jpg&ehk=C%2bZtLl8Ka9QWgpb4SDPlN6sIPh1vZG7wwfbBZqHJAi0%3d&risl=&pid=ImgRaw&r=0'},
    {
      'name': '射手座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6545.jpg_wh300.jpg!/fh/300/quality/90',
    },
    {
      'name': '摩羯座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6542.jpg_wh860.jpg!/fh/300/quality/90',
    },
    {
      'name': '水瓶座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6562.jpg_wh300.jpg',
    },
    {
      'name': '双鱼座',
      'backgroundImage':
          'https://img95.699pic.com/photo/40015/6548.jpg_wh300.jpg',
    },
  ];

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: ListView.builder(
        itemCount: constellations.length,
        itemBuilder: (ctx, index) {
          return Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical:8),
                child: Container(
                  width:500,
                  child: AspectRatio(
                    aspectRatio: 1/0.6,
                    child: Image.network(
                      constellations[index]['backgroundImage']!,
                      fit: BoxFit.cover
                    ),
                  )
                ),
              ),  
              Positioned(
                top:0,
                bottom:0,
                left:0,
                right:0,
                child: Center(
                  child: Text(
                    constellations[index]['name']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    )
                  )
                )
              )
            ],
          );
        },
      ),
    );
  }
}

