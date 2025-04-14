SimpleDialog(
  title: Text('Select a language ?'),
  children:[
    SimpleDialogOption(
      child: Text('Python'),
      onPressed: (){
        Navigator.of(ctx).pop('python');
      }
    ),
    SimpleDialogOption(
      child: Text('TypeScript'),
      onPressed: () {
        Navigator.of(ctx).pop('typescript');
      }
    ),
      SimpleDialogOption(
      child: Text('C++'),
      onPressed: () {
        Navigator.of(ctx).pop('c++');
      }
    )
    
  ]
);
