void main() {
  var flybyObjects = [
    {'name': 'example'},
    {'name': 'example2'}
  ];

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  const nums = [3, 4, 6, 8, 1, 3];

  print('oldfashion for loop:');
  for (var i = 0; i < nums.length; i++) print(nums[i]);

  print('standard for loop');
  for (var n in nums) print(n);

  print('forEach loop');
  nums.forEach((n) => print(n));

  print('while loop');
  int count = 0;
  while (count < 5) {
    print(count++);
  }
}
