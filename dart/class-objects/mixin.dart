mixin LifeCycle {
  void mounted() {

  }
  
  void updated() {

  }

  void beforeUnmount() {
    
  }
}

mixin Data {
  Map<String, dynamic> state = Map();

}

class Component with LifeCycle, Data {

}

main() {

}
