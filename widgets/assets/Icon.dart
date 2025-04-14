Icon(
  IconData(0xe0be, fontFamily:'MaterialIcons'),
  size: 80,
  color: Colors.orange,
)

Text('\ue0be', style:TextStyle(fontFamily:'MaterialIcons'))

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Icon(
      Icons.pool,
      size: 30,
      color: Colors.amber,
    );
  }
}
