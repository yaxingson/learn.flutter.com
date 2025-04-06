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
