class Car {
  late String brand;
  late String model;
  late int year;
  late double milesDriven;
  int cAge = 2023;

  static int numberOfCars = 0;

  Car(String brand, String model, int year) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.milesDriven = 0.0;
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return cAge - year;
  }
}

void main() {
  var car1 = Car("Toyota", "Supra", 2015);
  car1.drive(8793.78);

  var car2 = Car("Honda", "Civic", 2018);
  car2.drive(4964.24);

  var car3 = Car("Ford", "Mustang", 2020);
  car3.drive(6483.98);

  print("Car 1 - ${car1.getBrand()} ${car1.getModel()} (${car1.getYear()}):");
  print("Miles driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()}\n");

  print("Car 2 - ${car2.getBrand()} ${car2.getModel()} (${car2.getYear()}):");
  print("Miles driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()}\n");

  print("Car 3 - ${car3.getBrand()} ${car3.getModel()} (${car3.getYear()}):");
  print("Miles driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()}\n");

  print("Total number of cars created: ${Car.numberOfCars}");
}
