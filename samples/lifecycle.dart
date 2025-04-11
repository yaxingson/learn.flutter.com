import 'package:flutter/material.dart';

class UserPreferenceWidget extends InheritedWidget {
  final Widget child;
  final String locale;
  final VoidCallback changeLocale;
  
  UserPreferenceWidget({Key? key, required this.child, required this.locale, required this.changeLocale}): super(key:key, child:child);
  
  static UserPreferenceWidget? of(BuildContext ctx) {
    return ctx.dependOnInheritedWidgetOfExactType<UserPreferenceWidget>();
  }
  
  @override
  bool updateShouldNotify(UserPreferenceWidget oldWidget) {
    return locale != oldWidget.locale;
  }
}

class SettingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = UserPreferenceWidget.of(context);
    
    return Container(
      child: Column(
        children:[
          Text(data?.locale ?? 'en'),
          ElevatedButton(
            child: Text('change'),
            onPressed: () {
              data?.changeLocale();
            }
          )
        ]
      )
    );
  }
}

class LifeCycleDemo extends StatefulWidget {
  @override
  State<LifeCycleDemo> createState() => _LifeCycleDemoState();
  
}

class _LifeCycleDemoState extends State<LifeCycleDemo> {
  int _count = 0;
  
  @override
  void initState() {
    super.initState();
    debugPrint('LifeCycle::initState called');
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('LifeCycle::didChangeDependencies called');
  }
  
  @override
  void deactivate() {
    super.deactivate();
    debugPrint('LifeCycle::deactivate called');
  }
  
  @override
  void dispose() {
    super.dispose();
    debugPrint('LifeCycle::dispose called');
  }
  
  @override
  void didUpdateWidget(covariant LifeCycleDemo oldWidget) {
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

class Locale extends StatefulWidget {
  @override
  State<Locale> createState() => _LocaleState();
}

class _LocaleState extends State<Locale> {
  String locale = 'zh-cn';
  
  _changeLocale() {
    setState(() {
      locale = 'en-us';
    });
  }
  
  @override
  Widget build(BuildContext ctx) {
    return UserPreferenceWidget(
      locale:'zh-cn',
      changeLocale: _changeLocale,
      child: Wrap(
        children:[
          SettingWidget(),
          LifeCycleDemo()
        ]
      ),
    );
  }
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Locale()
      ),
    );
  }
}

main() => runApp(App());
