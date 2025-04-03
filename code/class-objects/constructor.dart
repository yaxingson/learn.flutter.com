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

class Circle {
  num radius = 0;

  Circle(this.radius);
  Circle.unit() {
    radius = 1.0;
  }

  String toString() {
    return 'Circle($radius)';
  }
}

main() {
  Rect rect = Rect(width:5.0);

  print(rect);
  print(rect.width);
  print(rect.getArea());

  print(Circle.unit().toString());


}
