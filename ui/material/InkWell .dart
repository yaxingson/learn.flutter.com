class InkWellDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Stack(
      children:[
        CircleAvatar(
          radius:120,
          child: Image.network('https://png.pngtree.com/png-vector/20230414/ourlarge/pngtree-character-avatar-cartoon-three-dimensional-illustration-png-image_6694306.png')
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withAlpha(76),
              highlightColor: Colors.white.withAlpha(25),
              onTap: () {
                debugPrint('~~~');
              }
              
            ),
          ),
        )
      ]
    );
  }
}
