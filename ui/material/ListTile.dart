class ListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return ListTile(
      title: Text('Payment'),
      subtitle: Text(''),
      leading: Icon(Icons.payment),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        
      }
    );
  }
}
