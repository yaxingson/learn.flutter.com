class ChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Chip(
      avatar: CircleAvatar(
        child: Icon()
      ),
      label:Text(''),
      backgroundColor: Colors.grey, 
      deleteIcon: Icon(Icons.remove),
      deleteIconColor: Colors.amber,
      deleteButtonTooltipMessage: 'Remove Tag',
      onDeleted: () {
            
      },
    );
  }
}
