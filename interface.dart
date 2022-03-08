import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(7);
    if (type == 'square') return Square(7);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 3);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 3);
}

class CircleMock implements Circle {
  num area = 20;
  num radius = 20;
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}
