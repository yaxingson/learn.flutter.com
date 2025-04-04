abstract class List {
  bool isEmpty();

  String toString() {
    return 'list';
  }
}

class Stack extends List {
  bool isEmpty() {
    return true;
  }

}

main() {
  Stack s = Stack();

  print(s.toString());


}
