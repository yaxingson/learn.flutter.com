class ClipRRectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Image.network(
        'https://avatars.githubusercontent.com/u/1650997?v=4',
        width: 120,
        height: 120,
        fit: BoxFit.cover
      )
    );
  }
}
