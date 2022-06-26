main() {
  var p = Person(name: 'matheus', age: 20);
  print(p);
}

class Person {
  String name = '';
  int age = 0;

  Person({required this.name, this.age = 20});
}
