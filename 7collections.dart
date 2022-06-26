main() {
  List<String> names = const ['matheus', 'carol', 'diego'];

  var random = ['name1', 'something', 1, null];

  Set<String> namesSet = {
    'matheus',
    'carol',
    'diego',
    'marcos',
    'adaline',
    'leonardo'
  };

  Map<String, String> gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'third': 'something'
  };

  var names2 = [...names];

  print(names[0]);
}
