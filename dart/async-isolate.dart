import 'dart:async';
import 'dart:isolate'

main() {
  print('flow start');
  
  Timer.run((){
    print('event');
    scheduleMicrotask(() {
      print('timer::microtask');
    });
  });

  scheduleMicrotask(() {
    print('microtask');
    Timer.run((){
      print('microtask::timer');
    });
  });

  print('flow end');
}
