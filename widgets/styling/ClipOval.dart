class CircleImage extends StatelessWidget {
  final double radius;
  final String url;
  
  CircleImage({required this.radius, required this.url});
  
  @override
  Widget build(BuildContext ctx) {
    return ClipOval(
      child: Image.network(
        url,
        width: radius,
        height: radius,
        fit: BoxFit.cover
      ),
    ); 
  }
}
