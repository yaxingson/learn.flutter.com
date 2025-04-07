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

class LifeCycleDemo extends StatefulWidget {
  @override
  State<LifeCycleDemo> createState() => _LifeCycleDemoState();
  
}

class _LifeCycleDemoState extends State<LifeCycleDemo> {
  int _count = 0;
  
  initState() {
    super.initState();
    debugPrint('LifeCycle::initState called');
  }
  
  didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('LifeCycle::didChangeDependencies called');
  }
  
  deactivate() {
    super.deactivate();
    debugPrint('LifeCycle::deactivate called');
  }
  
  dispose() {
    super.dispose();
    debugPrint('LifeCycle::dispose called');
  }
  
  didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('LifeCycle::didUpdateWidget called');
  }
 
  @override
  Widget build(BuildContext ctx) {
    debugPrint('LifeCycle::build called');
    return TextButton(
      child: Text('$_count'),
      onPressed: () {
        setState(() {
          _count++;
        });
      }
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
          locale:'zh-cn',
          child: Wrap(
            children:[
              SettingWidget(),
              LifeCycleDemo()
            ]
          ),
        )
      ),
    );
  }
}
