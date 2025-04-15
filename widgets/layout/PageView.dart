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
  int activeIndex = 0;
  
  @override
  Widget build(BuildContext ctx) {
    return Stack(
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(
              width: widget.width,
              height: widget.height,
              child:PageView(
                children: widget.children,
                onPageChanged: (index) {
                  setState((){
                    activeIndex = index;
                  });
                }
              )
            )
          ]
        ),
        Positioned(
          left:0,
          right:0,
          bottom: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.children.length, (i) {
              return Container(
                width:5,
                height: 5,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: activeIndex == i ? Colors.grey : Colors.transparent,
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
