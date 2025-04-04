library main;
// automatically imported
// import 'dart:core';
import 'dart:math';
import 'dart:collection';
import 'util/parse.dart' as parse;
import 'util/types.dart' show isNum, isBool;
import 'util/text.dart' deferred as text;
import 'util/system.dart';

class EntryItem extends LinkedListEntry<EntryItem> {}

main() async {
  print(isNum(9.78));
  print(isBool(''));
  print('${max(56, 89)} ${sqrt(9.0)} $pi');

  print(parse.parseEnv());

  // print(text.TextDecoder());

  await text.loadLibrary();
  print(text.TextDecoder());

  print(getSystemErrorName);
  print(LinkedList<EntryItem>());



}
