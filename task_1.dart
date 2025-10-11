import 'dart:io';

void main() {
  print('Please enter your name: ');
  String? name = stdin.readLineSync();

  print('Please enter your age: ');
  String? ageString = stdin.readLineSync();

  int age = int.parse(ageString!);
  int yearsTo100 = 100 - age;

  if (yearsTo100 > 0) {
    print('Hello, $name! You have $yearsTo100 years until you turn 100.');
  } else {
    print('Hello, $name! You have already reached or passed 100 years. Congratulations!');
  }
}
