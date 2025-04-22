class StreamDemo extends StatefulWidget {
  @override
  State<StreamDemo> createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  Stream<String> _stream = Stream<String>.fromFuture(
    Future.delayed(Duration(seconds:3), ()=>'hello,world'));
  
  @override
  initState() {
    super.initState();
  }
  
  @override
  dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext ctx) {
    return Container(
      child: StreamBuilder(
        stream: _stream,
        initialData:'empty data',
        builder: (ctx, snapshot) {
          return Text('${snapshot.data}');
        },
      )
    );
  }
}

class GithubUsersList extends StatefulWidget {
  @override
  State<GithubUsersList> createState() => _GithubUsersListState();
}

class _GithubUsersListState extends State<GithubUsersList> {  
  Future<List<Map<String, String>>> _fetchUsers() async {
    await Future.delayed(Duration(seconds:3));
    return [
      {
        'login':'trinhminhtriet', 
        'avatar':'https://avatars.githubusercontent.com/u/1650997?v=4'
      },
      {
        'login':'mustafacagri', 
        'avatar':'https://avatars.githubusercontent.com/u/7488394?v=4'
      },
      {
        'login':'IDouble', 
        'avatar':'https://avatars.githubusercontent.com/u/18186995?v=4'
      },
      {
        'login':'alxkm', 
        'avatar':'https://avatars.githubusercontent.com/u/19151554?v=4'
      },
      {
        'login':'bludnic', 
        'avatar':'https://avatars.githubusercontent.com/u/25831507?v=4'
      }
    ];
  }
 
  @override
  Widget build(BuildContext ctx) {
    return FutureBuilder(
      future: _fetchUsers(),
      builder: (ctx, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading ...')
          );
        }
        
        return ListView(
          children: snapshot.data!.map((user) {
            return Container(
              padding: EdgeInsets.all(30),
              child: ListTile(
                title: Text(user['login']!),
                leading: ClipRRect(
                    borderRadius:BorderRadius.circular(40),
                    child: Image.network(user['avatar']!, fit:BoxFit.cover)
                )
              )
            );
          }).toList()
        );
      }
    );
  }
}

