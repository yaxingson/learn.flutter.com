class PopupMenuButtonDemo extends StatelessWidget {
  Widget build(ctx) {
    return PopupMenuButton(
      onSelected: (value) {
        debugPrint('selected value: $value');
      },
      itemBuilder: (ctx) {
        return [
          PopupMenuItem(
            value:'rust',
            child: Text('rust')
          ),
          PopupMenuItem(
            value:'dart',
            child: Text('dart')
          ),
          PopupMenuItem(
            value:'python',
            child: Text('python')
          ),
          
        ];
      }

    );
  }
}
