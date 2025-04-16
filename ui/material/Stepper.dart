class StepperDemo extends StatefulWidget {
  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  
  @override
  Widget build(BuildContext ctx) {
    return Stepper(
      currentStep: _currentStep,
      onStepTapped: (idx) {
        setState((){
          _currentStep = idx;
        });
      },
      onStepContinue: () {
        if(_currentStep < 2) {
          setState(() {
            _currentStep++;
          });
        }
      },
      onStepCancel: () {
        if(_currentStep > 0) {
          setState(() {
            _currentStep--;
          });
        }
      },
      steps:[
        Step(
          title:Text('注册'),
          subtitle: Text('填写个人基本信息'),
          content: Text(''),
          isActive: _currentStep == 0,
        ),
        Step(
          title:Text('认证'),
          subtitle: Text('人脸识别'),
          content: Text(''),
          isActive: _currentStep == 1,
        ),
        Step(
          title:Text('绑定账号'),
          subtitle: Text('手机号或邮箱绑定'),
          content: Text(''),
          isActive: _currentStep == 2
        )
      ]
    );
  }
}
