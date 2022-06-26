// You can create an abstract class to be extended (or implemented) by
// a concrete class. Abstract classes can contain abstract methods (with
// empty bodies).
abstract class Describable {
  void describe();
  void describeWithEmphasis();
}

// Dart has no interface keyword. Instead, all classes implicitly define
// an interface. Therefore, you can implement any class.

class Describer implements Describable {
  @override
  void describe() {
    print('Describing something...');
  }

  @override
  void describeWithEmphasis() {
    print('===========================');
    describe();
    print('===========================');
  }
}
