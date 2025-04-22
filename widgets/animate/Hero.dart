class FlutterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.of(ctx).pop();
      },
      child: Container(
        color: Colors.grey[100],
        child: Center(
          child: Hero(
              tag: 'flutter_logo',
              child: Text('Hello,Flutter!', style: TextStyle(fontSize: 30))),
        ),
      ),
    ));
  }
}

class HeroAnimationDemo extends StatefulWidget {
  @override
  State<HeroAnimationDemo> createState() => _HeroAnimationDemoState();
}

class _HeroAnimationDemoState extends State<HeroAnimationDemo> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: GestureDetector(
          child: Hero(
            tag: 'flutter_logo',
            child: FlutterLogo(size: 80),
          ),
          onTap: () {
            Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) {
              return FlutterScreen();
            }));
          }),
    );
  }
}
