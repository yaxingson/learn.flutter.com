import 'lib/shape.dart';

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

class Line {
  num x1, y1;
  num x2, y2;

  // Line(): x1 = 0, y1 = 0, x2 = 1, y2 = 0 {}
  Line(this.x1, this.y1, this.x2, this.y2);
  Line.ray(num x, num y): this(0, 0, x, y);

  String toString() {
    return 'Line($x1, $y1, $x2, $y2)';
  }
}

main() {
  Rect rect = Rect(width:5.0);
  Circle circle = Circle(3.0);
  Line line = Line.ray(5, 8);

  print(rect);
  print(rect.width);
  print(rect.getArea());

  circle.radius = 10.0;

  print(circle.radius);
  print(Circle.unit().toString());
  // print(Circle(5)._radius);

  print(const Point(1, 2) == const Point(1, 2));
  print(Point.dim);

  print(line.toString());

}
