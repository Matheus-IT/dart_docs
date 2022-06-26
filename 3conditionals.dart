import 'dart:io';

void main() {
  stdout.writeln('Enter a year: ');
  var year = int.parse(stdin.readLineSync() ?? '0');

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }
}
