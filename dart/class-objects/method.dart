class Calc {
  static List<String> support_operators = [
    'add', 'sub', 'mul', 'div'
  ];

  // static method
  static double add(double x, double y) {
    return x + y;
  }
}

main() {
  print(Calc.support_operators);
  print(Calc.add(78, 19));



}
