enum StackError {
  overflow,
  underflow,
}

class Stack<T> {
  List<T> items = [];
  final int maxSize;

  Stack([this.maxSize = -1]); // Default is not sizable

  bool get isSizable => maxSize > 0;

  void push(T item) {
    if (isSizable && items.length == maxSize) {
      throw StackError.overflow;
    }
    items.add(item);
  }

  T pop() {
    if (items.isEmpty) {
      throw StackError.underflow;
    }
    return items.removeLast();
  }

  @override
  String toString() {
    return 'Stack(${items.join(', ')})';
  }
}

void main() {
  Stack s = Stack(5);
  s.push('car');
  s.push(10);
  s.push('bus');
  s.push('train');
  s.push([1, 2, 3]);
  print(s);
}
