class AnimationDemo extends StatefulWidget {
  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _sizeAnimation;
  late Animation _colorAnimation;
  
  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds:3),
      vsync:this
    );
    
    _sizeAnimation = Tween<double>(begin:30, end:200).animate(
      CurvedAnimation(
        parent:_controller,
        curve: Curves.easeInCirc
      )
    );
    _colorAnimation = ColorTween(begin:Colors.white, end:Colors.blue).animate(_controller);
    
    _controller.forward();
    
    _controller.addListener((){
//       debugPrint('current: ${_controller.value}');
      setState((){});
    });
    
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _controller.reverse();
      } else if(status == AnimationStatus.dismissed) {
//         _controller.forward();
      }
    });
    
  }
  
  @override
  dispose() {
    super.dispose();
    _controller.dispose();
  }
  
  @override
  Widget build(ctx) {
    return Center(
      child: Icon(
        Icons.ac_unit,
        size: _sizeAnimation.value,
        color: _colorAnimation.value,
      ),
    );    
  }
}

class RotateLoading extends StatefulWidget {
  @override
  State<RotateLoading> createState() => _RotateLoadingState();
}

class _RotateLoadingState extends State<RotateLoading> with TickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds:5),
      vsync:this
    );
  }

  @override
  Widget build(ctx) {
    return Loading(
      animations:[],
      controller: _controller
    );    
  }
}

class ProgressLoading extends StatefulWidget {
  @override
  State<ProgressLoading> createState() => _ProgressLoadingState();  
}

class _ProgressLoadingState extends State<ProgressLoading> with TickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds:5),
      vsync:this
    );
  }
  
  @override
  Widget build(ctx) {
    return Loading(
      animations:[],
      controller: _controller
    );    
  }
}

class Loading extends AnimatedWidget {
  final List<Animation> animations;
  final AnimationController controller;
  
  Loading({required this.animations, required this.controller}):super(listenable:controller);
  
  @override
  Widget build(ctx) {
    return Center(
      child: Container(
        width: 180,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(width:1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 28,
            constraints:BoxConstraints(
              maxWidth:80,
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
            )
          )
        )
      )
    );
  }
}

class AnimatedWidgetDemo extends StatefulWidget {
  @override
  State<AnimatedWidgetDemo> createState() => _AnimatedWidgetDemoState();
}

class _AnimatedWidgetDemoState extends State<AnimatedWidgetDemo> {
  double _radians = 0;
  double _padding = 0;
  double _opacity = 0;
  double _fontSize = 12;
  Color _fontColor = Colors.lightBlue;
  bool _loading = true;

  @override
  initState() {
    super.initState();
    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        _radians = 720;
        _padding = 30;
        _opacity = 1;
        _fontSize = 30;
        _fontColor = Colors.black;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return Column(
      children: [
        Row(
          children: [],
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 3000),
          width: MediaQuery.of(ctx).size.width,
          height: MediaQuery.of(ctx).size.height / 3,
          color: Colors.lightBlue,
          child: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 80,
              height: 10,
              transform: Matrix4.rotationZ(_radians),
              transformAlignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
        AnimatedPadding(
          padding: EdgeInsets.fromLTRB(0, _padding, 0, 0),
          duration: Duration(seconds: 3),
          curve: Curves.bounceIn,
          child: Container(
            height: 30,
            color: Colors.purple,
          ),
        ),
        AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 3),
          curve: Curves.easeIn,
          child: Container(
            height: 100,
            color: Colors.orange,
          ),
        ),
        AnimatedDefaultTextStyle(
          duration: Duration(seconds: 3),
          style: TextStyle(fontSize: _fontSize, color: _fontColor),
          child: Text('Hello,world'),
        ),
        Container(
          child: Center(
            child: AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              duration: Duration(seconds: 3),
              child: Text(_loading ? '加载中...' : '欢迎使用Flutter!',
                  style: TextStyle(fontSize: 30), key: UniqueKey()),
            ),
          ),
        )
      ],
    );
  }
}

class TransitionDemo extends StatefulWidget {
  @override
  State<TransitionDemo> createState() => _TransitionDemoState();
}

class _TransitionDemoState extends State<TransitionDemo>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _fadeController;
  late AnimationController _scaleController;
  late AnimationController _slideController;
  late AnimationController _iconController;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();

    _rotationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);

    _fadeController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1000),
        lowerBound: 0.3,
        upperBound: 1)
      ..forward();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat(reverse: true);

    _slideController =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..forward();

    _iconController =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..forward();
  }

  @override
  Widget build(BuildContext ctx) {
    return Column(
      children: [
        RotationTransition(
          turns: _rotationController,
          child: GestureDetector(
              child: Icon(Icons.ac_unit, size: 50),
              onTap: () {
                if (!_isRunning) {
                  _rotationController.repeat();
                  _isRunning = true;
                } else {
                  _rotationController.stop();
                  _isRunning = false;
                }
              }),
        ),
        FadeTransition(
          opacity: _fadeController,
          child: FlutterLogo(size: 50),
        ),
        ScaleTransition(
          scale: _scaleController.drive(Tween(begin: 0.5, end: 2)),
          child: Icon(Icons.favorite, size: 50),
        ),
        SlideTransition(
          position: Tween(begin: Offset(0, 0), end: Offset(2.5, 2.5))
              .chain(CurveTween(curve: Curves.bounceInOut))
              .animate(_slideController),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),
        ),
        AnimatedIcon(
            icon: AnimatedIcons.close_menu, size: 50, progress: _iconController)
      ],
    );
  }
}

class StaggeredAnimationDemo extends StatefulWidget {
  @override
  State<StaggeredAnimationDemo> createState() => _StaggeredAnimationDemoState();
}

class _StaggeredAnimationDemoState extends State<StaggeredAnimationDemo>
    with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;

  @override
  initState() {
    super.initState();
    _controller1 =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..forward();
    _controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..forward();
  }

  @override
  Widget build(BuildContext ctx) {
    return Stack(
      children: [
        ScaleTransition(
          scale: Tween(begin: 1.0, end: 0.0)
              .chain(CurveTween(curve: Interval(0, 0.5)))
              .animate(_controller1),
          child: Container(width: 300, height: 300, color: Colors.purple),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Center(
                child: ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.0)
                  .chain(CurveTween(curve: Interval(0.5, 0.8)))
                  .animate(_controller2),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.pink,
              ),
            )))
      ],
    );
  }
}

