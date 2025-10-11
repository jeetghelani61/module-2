import 'dart:io';

void main() {
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter a choice (1, 2, 3, 4): ');
  String choice = stdin.readLineSync()!;

  double result;

  switch (choice) {
    case '1':
      result = num1 + num2;
      print('Result: $result');
      break;
    case '2':
      result = num1 - num2;
      print('Result: $result');
      break;
    case '3':
      result = num1 * num2;
      print('Result: $result');
      break;
    case '4':
      result = num1 / num2;
      print('Result: $result');
      break;
    default:
      print('Error: Invalid operator.');
  }
}
