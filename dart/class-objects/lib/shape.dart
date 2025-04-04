class Circle {
  // private
  num _radius = 0;

  Circle(this._radius);
  Circle.unit() {
    _radius = 1.0;
  }

  // getter
  num get radius {
    return _radius;
  }

  // setter
  set radius(num value) {
    _radius = value;
  }

  String toString() {
    return 'Circle($_radius)';
  }
}
