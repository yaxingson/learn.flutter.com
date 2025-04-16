class GlobalDataProvider extends InheritedWidget {
  final String theme; 
  final Widget child;
  
  GlobalDataProvider({required this.child, this.theme='light'}):super(child:child);
 
  @override
  bool updateShouldNotify(oldWidget) {
    return true;
  }
  
  static GlobalDataProvider? of(BuildContext ctx) {
    return ctx.dependOnInheritedWidgetOfExactType();
  }
}

class ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final String? theme = GlobalDataProvider.of(ctx)?.theme;
    return Text('$theme');
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: GlobalDataProvider(
          theme:'dark',
          child: ChildWidget()
        )
      )
    );
  }
}
