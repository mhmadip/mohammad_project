class Car {
  String make;
  String model;
  int year;

  Car({required this.make, required this.model, required this.year});

  @override
  String toString() {
    return '$year $make $model';
  }
}