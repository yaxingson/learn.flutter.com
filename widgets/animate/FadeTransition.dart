import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (_) => Scaffold(
                      body: Center(
                        child: Text('Home Screen'),
                      ),
                    )),
            (route) => false);
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://tse3-mm.cn.bing.net/th/id/OIP-C.aQj_s6xudnF244OEsMYbCAHaNK?rs=1&pid=ImgDetMain',
        width: MediaQuery.of(ctx).size.width,
        height: MediaQuery.of(ctx).size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
