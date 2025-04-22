class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return PageView(
      pageSnapping: true,
      reverse: true,
      scrollDirection: Axis.horizontal,
      controller: PageController(
        initialPage: 1,
        keepPage:true,
        viewportFraction: 0.8,
        
      ),
      children: [
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.lightBlue,
        ),
        Container(
          color: Colors.pink,
        ),
       
      ],
      onPageChanged: (currentIndex) {
        debugPrint('Page: $currentIndex');
      }
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}


class _PageViewDemoState extends State<PageViewDemo> {
  final List<String> posters = [
    'https://c-ssl.duitang.com/uploads/item/201910/18/20191018204723_bblcn.jpg',
    'https://so1.360tres.com/t017f8738ff262ee400.jpg',
    'https://c-ssl.duitang.com/uploads/item/201902/02/20190202220615_MjjcZ.jpeg',
    'https://p1.ssl.qhimg.com/t013767faa3df3bea2a.jpg',
    'https://c-ssl.duitang.com/uploads/item/201807/17/20180717215245_MLunm.jpeg'
  ];
  
  @override
  Widget build(BuildContext ctx) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: posters.length,
      itemBuilder: (ctx, i) {
        return Container(
          width: double.infinity,
          height:double.infinity,
          child: Image.network(
            posters[i],
            fit: BoxFit.cover
          )
        );
      },
      onPageChanged: (currentIndex) {
        if(currentIndex + 2 >= posters.length) {
          setState(() {
            for(int i = 0; i < 5; i++) {
              posters.add(posters[i]);
            }
          });
        }
      }
    );
  }
}

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final bool indicator;
  final List<Widget> children;
  
  Swiper({this.width=double.infinity, this.height=300, this.indicator=false, required this.children});
  
  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _activeIndex = 0;
  PageController _controller = PageController(initialPage:0);
  late Timer _timer;
  
  @override
  initState() {
    super.initState();
    
    _timer = Timer.periodic(Duration(seconds:5), (timer) {
      _controller.animateToPage(
        (_activeIndex+1)%widget.children.length,
        duration: Duration(milliseconds:300),
        curve: Curves.bounceInOut,
      );
    });
    
  }
  
  @override
  dispose() {
    super.dispose();
    _timer.cancel();
    _controller.dispose();
  }
  
 
  @override
  Widget build(BuildContext ctx) {
    final double _fullWidth = MediaQuery.of(ctx).size.width;
    final double _width = widget.width;
    final double _marginHorizontal = _width >= _fullWidth ? 0 : (_fullWidth - _width) / 2;

    return Stack(
      children:[
        Container(
          margin:EdgeInsets.symmetric(horizontal:_marginHorizontal, vertical:8),
          width: widget.width,
          height: widget.height,
          color: Colors.black,
          child:PageView.builder(
            controller: _controller,
            itemCount: double.maxFinite.floor(),
            itemBuilder: (ctx, index) {
              return ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth:widget.width,
                  minHeight:widget.height
                ),
                child: widget.children[index % widget.children.length]
              );
            },
            onPageChanged: (index) {
              setState((){
                _activeIndex = index % widget.children.length;
              });
            }
          )
        ),
        Positioned(
          left:0,
          right:0,
          bottom: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.children.length, (i) {
              return Container(
                width:5,
                height: 5,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: _activeIndex == i ? Colors.grey : Colors.transparent,
                  border: Border.all(width:1, color:Colors.white),
                  shape: BoxShape.circle,
                )
              );
            })
          )
        )
      ]
    );
  }
}
