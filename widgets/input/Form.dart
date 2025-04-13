class FormDemo extends StatefulWidget {
  @override
  State<FormDemo> createState() => _FormDemoState();
  
}

class _FormDemoState extends State<FormDemo> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final Map<String, dynamic> formData = {};
  
  @override
  Widget build(BuildContext ctx) {
    return Form(
      key: _globalKey,
      child: Column(
        children:[
          TextFormField(
            autovalidateMode: AutovalidateMode.onUnfocus,
            decoration: InputDecoration(
              hintText: 'phone number',
              helperText:''
            ),
            validator: (phone) {
              RegExp pattern = new RegExp(r'^(166|138|188)\d{8}$'); 
       
              if(phone != null && !pattern.hasMatch(phone)) {
                return 'phone validate failed!';
              }
              
              return null;
            },
            onSaved: (phone) {
              setState((){
                formData['phone'] = phone;
              });
            }
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'password',
              
            ),
            validator: (passwd) {
              RegExp pattern = new RegExp(r'^[a-zA-Z0-9]{8,}$'); 
       
              if(passwd != null && !pattern.hasMatch(passwd)) {
                return 'password validate failed!';
              }
              
              return null;
            },
            onSaved: (passwd) {
              setState((){
                formData['passwd'] = passwd;
              });
            }
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              ElevatedButton(
                onPressed: () {
                  dynamic validateResult = _globalKey.currentState?.validate();
                  
                  if(validateResult != null && validateResult) {
                    debugPrint('form validate successful!');
                    _globalKey.currentState?.save();
                  }
                  
                },
                child: Text('submit')
              ),
              SizedBox(width: 30),
              ElevatedButton(
                onPressed: () {
                  _globalKey.currentState?.reset();
                },
                child: Text('reset')
              ),
              
            ]
          ),
          
          Text('<${formData['phone']}, ${formData['passwd']}>')
          
        ]
      ),
    );
  }
}
