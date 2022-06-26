/// example with Person
class Person {
  String name = '';
  String secondName = '';
  int age = 0;

  Person(String name, [int age = 18, String secondName = '']) {
    this.name = name;
    this.age = age;
    this.secondName = secondName;
  }

  // shortcut:
  // Person(this.name, [this.age=18, this.secondName = '']);

  // named contructor:
  // Person.guest() {
  //   name = 'Guest';
  //   age = 18;
  // }

  void presentPerson() {
    print('Name ${this.name}');
    print('Age ${this.age}');
  }
}

class Student extends Person {
  double grades = 0;

  Student(String name, double grades, [int age = 18, String secondName = ''])
      : super(name, age, secondName) {
    this.grades = grades;
  }

  void showGrades() {
    print(grades);
  }
}

/// example with Vehicle
class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;
  int nOfWheels = 4;

  Car(String model, int year, this.price) : super(model, year);

  @override
  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

/// example with Rectangle
class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right {
    return left + width;
  }

  set right(num value) {
    left = value - width;
  }

  num get bottom {
    return top + height;
  }

  set bottom(num value) {
    top = value - height;
  }
}

// If your class produces objects that never change, you
// can make these objects compile-time constants. To do
// this, define a const constructor and make sure that
// all instance variables are final.
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  Person p1 = Person('Matheus');
  p1.presentPerson();

  var p3 = Student('Matheus', 9.75);
  p3.showGrades();

  var car = Car('Some model', 2014, 150000);
  car.showOutput();
}
