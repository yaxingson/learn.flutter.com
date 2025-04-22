class User {
  final String username;
  final String email;
  final String birth;
  bool selected;
  
  User(this.username, this.email, this.birth, [this.selected=false]);
}

class DataTableDemo extends StatefulWidget {
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  final List<User> users = [
    User('Marie Brown', 'cuufaibe@jir.ng', '10/17/2042'),
    User('Dale Holmes', 'sovdaic@mu.tf', '12/9/2081', true),
    User('Laura Erickson', 'uforuddat@ahehupun.mo', '8/23/2085'),
  ];
  
  bool _sortAscending = false;
  
  List<DataRow> _getDataRows() {
    return users.map((user) => DataRow(
       selected: user.selected,
       onSelectChanged: (selected) {
         setState((){
           user.selected = selected ?? false;
         });
       },
       cells:[
         DataCell(Text(user.username)),
         DataCell(Text(user.email)),
         DataCell(Text(user.birth))
       ]
    )).toList();
  }
  
  @override
  Widget build(BuildContext ctx) {
    return DataTable(
      sortColumnIndex: 0,
      sortAscending: _sortAscending,
      columns:[
        DataColumn(label:Text('username')),
        DataColumn(label:Text('email')),
        DataColumn(label:Text('birth')),
      ],
      rows: _getDataRows(),
      
    );
  }
}

class Language {
  final String name;
  final double ratings;
  final String change;
  bool selected;
  
  Language({required this.name, required this.ratings, required this.change, this.selected=false});
}

class LangRankingList extends StatefulWidget {
  @override
  State<LangRankingList> createState() => _LangRankingListState();
} 

class _LangRankingListState extends State<LangRankingList> {
  bool ascending = false;
  List<Language> langs = [
    Language(name:'Python', ratings: 23.08, change: '+6.67'),
    Language(name:'C++', ratings: 10.33, change: '+0.56'),
    Language(name:'C', ratings: 9.94, change: '-0.27'),
    Language(name:'Java', ratings: 9.63, change: '+0.69'),
    Language(name:'C#', ratings: 4.39, change: '-2.37'),
  ];
  
  
  
  String _getLogoUrl(String name) {
    switch(name) {
      case 'Python': return 'https://neuraldatascience.io/_images/python_logo.png';
      case 'C++': return 'https://tse3-mm.cn.bing.net/th/id/OIP-C.i40BtZ4BxSIUVlwY74TzJQAAAA?rs=1&pid=ImgDetMain';
      case 'C': return 'https://img-blog.csdnimg.cn/6b798ccce5c74461a39153fe76d408e9.png?x-oss-process=image/resize,m_fixed,h_224,w_224';
      case 'Java': return 'https://tse1-mm.cn.bing.net/th/id/OIP-C.CqZo7-kKhAdWeoEBFfwgRAAAAA?rs=1&pid=ImgDetMain';
      case 'C#': return 'https://raw.githubusercontent.com/Eriquito00/Eriquito00/main/img/c-sharp.png';
    }
    return '';
  }
  
  @override
  Widget build(BuildContext ctx) {
    return DataTable(
      sortColumnIndex:3,
      sortAscending:ascending,
      onSelectAll: (selected) {
        
      },
      columns:[
        DataColumn(
          label:Text('Position')
        ),
        DataColumn(
          label:Text('Logo')
        ),
        DataColumn(
          label:Text('Name')
        ),
        DataColumn(
          label:Text('Ratings'),
          onSort: (columnIndex, ascending) {
            setState(() {
              this.ascending = ascending;
              langs.sort((a, b) {
                if(!ascending) {
                  (a, b) = (b, a);
                }
                return a.ratings.compareTo(b.ratings);
              });
            });
          }
        ),
        DataColumn(
          label:Text('Change')
        ),
      ],
      rows: langs.map((lang){
        final int index = langs.indexOf(lang);
        final String name = lang.name;
        final logoUrl = _getLogoUrl(name);
         
        return DataRow(
          selected: lang.selected,
          onSelectChanged: (selected) {
            if(lang.selected != selected) {
              setState(() {
                lang.selected = selected ?? false;
              });
            }
          },
          cells:[
            DataCell(Text('${ index + 1}')),
            DataCell(Image.network(logoUrl, width:30, height:30)),
            DataCell(Text(name)),
            DataCell(Text('${lang.ratings}%')),
            DataCell(Text('${lang.change}%'))
          ]
        );
      }).toList()
    );
  }
}

class User {
  final String fullname;
  final String email;
  final String avatar;

  User({required this.avatar, required this.email, required this.fullname});
  factory User.fromJson(Map<String, dynamic> data) {
    return User(
        avatar: data['avatar'],
        email: data['email'],
        fullname: data['fullname']);
  }
}

class UserTable extends StatefulWidget {
  @override
  State<UserTable> createState() => _UserTableState();
}

class _UserTableState extends State<UserTable> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();

    (() async {
      final users = await _fetchUserData();
      setState(() {
        users.forEach((user) {
          this.users.add(user);
        });
      });
    })();
  }

  Future<List<User>> _fetchUserData() async {
    final List<User> userList = [];

    final url = Uri.parse('https://randomuser.me/api?results=5');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      final results = jsonResponse['results'];
      results.forEach((item) {
        userList.add(User(
            fullname: '${item['name']['first']} ${item['name']['last']}',
            avatar: '${item['picture']['medium']}',
            email: item['email']));
      });
    }

    return userList;
  }

  _buildUserTable(List<User> users) {
    return DataTable(
        columns: [
          DataColumn(label: Text('Avatar')),
          DataColumn(label: Text('Fullname')),
          DataColumn(label: Text('Email')),
        ],
        rows: users.map((user) {
          return DataRow(cells: [
            DataCell(CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(user.avatar),
            )),
            DataCell(Text(user.fullname)),
            DataCell(Text(user.email))
          ]);
        }).toList());
  }

  @override
  Widget build(BuildContext ctx) {
    // return _buildUserTable(users);
    return FutureBuilder(
      future: _fetchUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading ...'),
          );
        } else {
          return _buildUserTable(snapshot.data!);
        }
      },
    );
  }
}
