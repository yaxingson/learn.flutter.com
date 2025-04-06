class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return RichText(
      text: TextSpan(
        text: 'rich text',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 25,
          fontStyle: FontStyle.italic,
          
        ),
        children:[
          TextSpan(
            text:'.',
            style: TextStyle(
              fontSize: 16
            ),
          ),
          
        ]
      )
    );
  }
}
