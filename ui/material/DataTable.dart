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
