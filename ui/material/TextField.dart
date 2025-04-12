class TextFieldDemo extends StatefulWidget {
  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();
  String username = '';
  String passwd = '';
  String confirmPasswd = '';

  @override
  initState() {
    super.initState();
    textEditingController.text = 'xxx';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }
  
  @override
  dispose() {
    super.dispose();
    textEditingController.dispose();
  }
 
  @override
  Widget build(BuildContext ctx) {
    return Column(
      children:[
        TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          maxLength: 12,
          maxLines: 1,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Username',
            hintText: 'enter your name',
            icon: Icon(Icons.person),
            filled:true,
            fillColor: Colors.grey[100],
            hintStyle: TextStyle(
              fontSize: 12,
            ),
            border: InputBorder.none,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlue,
              )
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
          ),
          onChanged: (value) {
            setState((){
              username = value;
            });
          },
          onSubmitted: (value) {
            debugPrint('input: $value');
          }
        ),
        TextField(
          obscureText:true,
          keyboardType: TextInputType.visiblePassword,
          maxLength: 30,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'enter your password',
          ),
          onChanged: (value) {
            setState((){
              passwd = value;
            });
          }
        ),
        TextField(
          keyboardType: TextInputType.visiblePassword,
          maxLength: 30,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            hintText: 'enter your confirmPasswd',
          ),
          onChanged: (value) {
            setState((){
              confirmPasswd = value;
            });
          }
        ),
        TextField(
          controller: textEditingController,
        ),   
        Text('<$username, $passwd>'),   
      ]
    );
  }
}
