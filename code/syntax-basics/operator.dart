void main() {
  var country = 'Mayotte';

  country ??= 'Dominican Republic';
  
  print(10 ~/ 3);
  print(10 is int);
  print(0.12 is! double);
  print(country);

  var user;

  print(user?.length);

  var colors = new Set();

  colors..add('pink')
    ..add('blue')
    ..add('navy');

  print(colors);
}
