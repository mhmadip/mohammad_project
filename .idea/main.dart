import 'dart:io';  // Required for I/O operations
import 'model.dart';

void main() {
  bool running = true;
  List<Car> cars = [
    Car(make: "Toyota", model: "Corolla", year: 2020),
    Car(make: "Ford", model: "Mustang", year: 2018),
    Car(make: "Tesla", model: "Model S", year: 2022)
  ];  // Pre-populated list of cars


  while (running) {
    printMenu();
    print('Please select an option: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('Option 1 selected.');
        addCar(cars);
        // Add code for Option 1
        break;
      case '2':
        print('Option 2 selected.');
        // Add code for Option 2
        removeCar(cars);

        break;
      case '3':
        print('Option 3 selected.');
        // Add code for Option 3
        searchCar(cars);

        break;
      case '4':
        print('Option 4 selected.');
        // Add code for Option 3
        print(cars);

        break;
      case 'q':
        print('Exiting program.');
        running = false;
        break;
      default:
        print('Invalid option, please try again.');
        break;
    }
  }
}

void printMenu() {
  print('\nMenu:');
  print('1. Option 1');
  print('2. Option 2');
  print('3. Option 3');
  print('3. Option 4');
  print('q. Quit');
}

void addCar(List<Car> cars) {
  stdout.write('Enter the make of the car: ');
  String? make = stdin.readLineSync();
  stdout.write('Enter the model of the car: ');
  String? model = stdin.readLineSync();
  stdout.write('Enter the year of the car: ');
  String? yearInput = stdin.readLineSync();

  if (make != null && model != null && yearInput != null) {
    int? year = int.parse(yearInput);
      cars.add(Car(make: make, model: model, year: year));
      print('Car added successfully: $make $model, $year.');
    } else {
    print('Invalid input.');
  }
}

void removeCar(List<Car> cars) {
  stdout.write('Enter the make of the car to remove: ');
  String? make = stdin.readLineSync();
  for(var i in cars){
  bool index = i.make==make;
  if(index==true&&make!=null){
    cars.remove(i);
    print('Car remove successfully');
    break;
  } else{
    print('something went wrong');
  }
}}

void searchCar(List<Car> cars) {
  stdout.write('Enter the make of the car to search for: ');
  String? make = stdin.readLineSync();
  for(var i in cars){
    bool index = i.make==make;
    if(index=true&&make!=null){
      print(i);
      print('Car found successfully');
    } else{
      print('not found');
    }
  }}



