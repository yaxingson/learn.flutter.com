class DrawerDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext ctx) {
    return Drawer(
      child: Column(
        children:[
          DrawerHeader(
            child: Text('header')
          ),
          UserAccountsDrawerHeader(
            accountName: Text('Jack Ma'),
            accountEmail:Text('45152671@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage:NetworkImage('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2917594343.jpg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2917594343.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.grey,
                  BlendMode.colorBurn,
                )
              ),
            ),
          ),
          ListTile(
            title: Text('close'),
            onTap: () {
              Navigator.of(ctx).pop();
            }
          ),
          
        ]
      )
    
    );
  }
}
