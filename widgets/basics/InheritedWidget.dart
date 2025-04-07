class UserPreferenceWidget extends InheritedWidget {
  final Widget child;
  final String locale;
  
  UserPreferenceWidget({Key? key, required this.child, required this.locale}): super(key:key, child:child);
  
  static UserPreferenceWidget? of(BuildContext ctx) {
    return ctx.dependOnInheritedWidgetOfExactType<UserPreferenceWidget>();
  }
  
  @override
  bool updateShouldNotify(UserPreferenceWidget oldWidget) {
    return true;
  }
}

class SettingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(UserPreferenceWidget.of(context)?.locale ?? 'en')
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: UserPreferenceWidget(
          locale: 'zh-cn',
          child: SettingWidget()
        ),
      
      ),
    );
  }
}
