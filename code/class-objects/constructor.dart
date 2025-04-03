import 'access-control.dart';

class Rect {
  num width = 0;
  num height = 0;

  Rect({ width:0, height:0 }) {
    this.width = width;
    this.height = height;
  }

  num getArea() {
    return width * height;
  }
}

class Point {
  static String dim = '2d';

  final num x;
  final num y;

  const Point(this.x, this.y);
}


main() {
  Rect rect = Rect(width:5.0);
  Circle circle = Circle(3.0);

  print(rect);
  print(rect.width);
  print(rect.getArea());

  circle.radius = 10.0;

  print(circle.radius);
  print(Circle.unit().toString());
  // print(Circle(5)._radius);

  print(const Point(1, 2) == const Point(1, 2));
  print(Point.dim);


}
