import 'dart:io';

main() {
  stdout.writeln('What is your name:');
  var firstName = stdin.readLineSync();

  stdout.writeln('What is your last name: ');
  String? lastName = stdin.readLineSync();

  print('My name is $firstName $lastName');
}
