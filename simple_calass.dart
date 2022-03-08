// Simple Dart

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;
  
  Bicycle(this.cadence, this.gear);
  
  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  
  void speedUp(int increment) {
    _speed += increment;
  }
  
  @override
  String toString() => 'Bicycle: $_speed mph';
}


void main() {
  var bike  = Bicycle(2,1);
  bike.speedUp(30);
  
  print(bike);
}