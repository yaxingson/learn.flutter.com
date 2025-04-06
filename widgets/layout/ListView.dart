import 'package:flutter/material.dart';


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
