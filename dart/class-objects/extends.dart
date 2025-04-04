import 'lib/widget.dart';

class Text extends Widget {
  


  @override
  String toString() {
    return '${super.toString()}::text';
  }

  @deprecated
  String toStringShort() {
    return '';
  }
}

main() {
  Text text = Text();

  print(text.toString());
  // print(text._hashCode);


}
