class Team {
  final String country;
  final double points;
  final int rankChange;
  final double integralChange;
  
  Team({required this.country, required this.points, required this.rankChange, required this.integralChange});
}

class MenfootballLeagueDataTableSource extends DataTableSource {
  final List<Team> _teams = [
    Team(country:'阿根廷', points:1858.00, rankChange:0, integralChange:0),
    Team(country:'法国', points:1818.71, rankChange:0, integralChange:0),
    Team(country:'比利时', points:1758.89, rankChange:0, integralChange:0),
    Team(country:'英格兰', points:1790.11, rankChange:0, integralChange:0),
    Team(country:'巴西', points:1659.00, rankChange:0, integralChange:0),
    Team(country:'葡萄牙', points:1616.10, rankChange:0, integralChange:0),
    Team(country:'荷兰', points:1558.00, rankChange:0, integralChange:0),
    Team(country:'西班牙', points:1498.00, rankChange:0, integralChange:0),
    Team(country:'意大利', points:1358.00, rankChange:0, integralChange:0),
    Team(country:'克罗地亚', points:1259.00, rankChange:0, integralChange:0),
    Team(country:'美国', points:1129.00, rankChange:0, integralChange:0),
    Team(country:'哥伦比亚', points:1108.00, rankChange:0, integralChange:0),
    Team(country:'摩洛哥', points:1058.00, rankChange:0, integralChange:0),
    Team(country:'墨西哥', points:1000.99, rankChange:0, integralChange:0),
    Team(country:'乌拉圭', points:999.10, rankChange:0, integralChange:0),
    
  ];
  
  @override
  DataRow getRow(index) {
    final Team team = _teams[index];
    
    return DataRow.byIndex(
      index:index,
      cells:[
        DataCell(Text('${index+1}')),
        DataCell(Text('${team.country}')),
        DataCell(Text('${team.rankChange}')),
        DataCell(Text('${team.points}')),
        DataCell(Text('${team.integralChange}')),
      ]
    );
  }
  
  @override
  int get rowCount => _teams.length;
  
  @override
  bool get isRowCountApproximate => false;
  
  @override
  int get selectedRowCount => 0;
  
  _sort(bool ascending) {
    _teams.sort((a, b) {
      if(!ascending) {
        (a, b) = (b, a);
      }
      return a.points.compareTo(b.points);
    });
    notifyListeners();
  }
  
}

class MenfootballLeagueTable extends StatefulWidget {
  @override
  State<MenfootballLeagueTable> createState() => _MenfootballLeagueTableState();
}

class _MenfootballLeagueTableState extends State<MenfootballLeagueTable> {
  bool _asc = false;
  final MenfootballLeagueDataTableSource _source = MenfootballLeagueDataTableSource();
  
  @override
  Widget build(BuildContext ctx) {
    
    
    return SingleChildScrollView(
      child: PaginatedDataTable(
        rowsPerPage: 5,
        header: Text('FIFA men\'s world rankings'),
        source: _source,
        sortColumnIndex:3,
        sortAscending:_asc,
        columns:[
          DataColumn(label:Text('No.')),
          DataColumn(label:Text('Country')),
          DataColumn(label:Text('RankChange')),
          DataColumn(
            label:Text('Points'),
            onSort: (columnIndex, ascending) {
              setState(() {
                this._asc = ascending;
                _source._sort(ascending);
                  
              });  
            }
          ),
          DataColumn(label:Text('IntegralChange'))
        ]
      )
    );
  }
}
