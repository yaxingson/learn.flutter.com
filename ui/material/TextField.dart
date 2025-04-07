class TextFieldDemo extends StatefulWidget {
  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String username = '';
  String passwd = '';
  String confirmPasswd = '';
 
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
            hintStyle: TextStyle(
              fontSize: 12,
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
        Text('<$username, $passwd>'),   
      ]
    );
  }
}
