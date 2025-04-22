import 'package:flutter_test/flutter_test.dart';
import 'calc.dart';

main() {
  test('Should return sum of two values', () {
    expect(Calc.add(1, 1), 2);
  });
}
