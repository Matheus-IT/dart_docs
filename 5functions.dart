int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

dynamic square(var num) {
  return num * num;
}

// Arrow function
dynamic square2(var n) => n * n;

void showOutput(var msg) {
  print(msg);
}

// here we have some optional paremeters
dynamic sum2(int n1, [int? n2, int n3 = 0]) {
  int total = n1;

  if (n2 is int) {
    total += n2;
  }
  return total;
}

// optional named parameters
void printName(String firstName, {String lastName = ''}) {
  print('$firstName $lastName');
}

void main() {
  printName('matheus', lastName: 'costa');
}
