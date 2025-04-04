void main() {
  // Number
  int count = 0;
  double salary = .56;
  num grade = 90;

  print('$count $salary $grade');
  print(salary.toInt());
  print(salary.round());
  print(salary.compareTo(1.2));
  print(0/0);

  // String
  String username = 'Lula Pittman';
  String email = "vu@gi.zm";
  String overview = '''
  Dart is a client-optimized language for developing fast apps on 
  any platform. Its goal is to offer the most productive programming 
  language for multi-platform development, paired with a flexible 
  execution runtime platform for app frameworks.
  ''';

  RegExp pattern = RegExp(r'^(166|138|188)\d{8}$');

  print(overview);
  print('<' + username + ', ' + email + '>');
  print(overview.split('\n'));
  print(overview.isEmpty);
  print(email.replaceAll(RegExp(r'gi\.'), 'gmail.'));
  print(email.contains('@'));
  print(email.indexOf('@'));
  print(pattern.hasMatch('18830484731'));

  // Boolean
  bool isEmpty = false;

  print(isEmpty);

  // List
  List data = [0, true, 7.2, ];
  List langs = <String>['rust', 'dart', 'go'];

  List themes = new List.empty(growable:true);
  List grades = new List.filled(5, 0);

  themes.add('system');
  themes.addAll(['dark', 'light']);
  themes.insert(1, 'hacker');

  themes.remove('dark');
  themes.removeAt(0);

  themes.clear();

  print(data);
  print(langs);
  print(themes);
  print([78, 100, ...?grades]);

  print(themes.length);
  print(themes.reversed.toList());
  print(langs.join(' | '));

  for (var i = 0; i < langs.length; i++) {
    print(langs[i]);
  }

  for (var lang in langs) {
    print(lang);
  }

  langs.forEach((lang) {
    print(lang);
  });

  print(langs.map((lang) { return lang.toUpperCase(); }).toList());
  print(langs.where((lang) { return lang.length >= 3; }).toList());
  print(langs.any((lang) {return lang.startsWith('d'); }));

  // Set
  Set employees = <String>{
    'Christian Vega',
    'Garrett Coleman',
    'Clifford Weaver',
  };

  Set fruits = new Set();
  Set vegetables = <String>{'tomato', 'carrot', 'broccoli', 'cucumber', 'pepper'};

  fruits.add('tomato');
  fruits.add('orange');
  fruits.add('cucumber');
  fruits.add('strawberry');
  fruits.add('pepper');

  print(employees);
  print(fruits);
  print(fruits.toList());
  print(fruits.intersection(vegetables));
  print(fruits.union(vegetables));
  print(fruits.difference(vegetables));
  print('${fruits.first} ${fruits.last}');

  // Map
  Map rect = {
    'width': 300,
    'height': 180,
  };

  Map circle = new Map();

  circle['radius'] = 1.0;

  circle.putIfAbsent('radius', () => 10.0);
  circle.putIfAbsent('center', () => [0, 0]);

  circle.removeWhere((key, value) => key == 'radius');

  print(rect);
  print(circle);
  print(circle.containsKey('radius'));

  // Runes

  // Symbol
  
}
