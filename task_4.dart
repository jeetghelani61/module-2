import 'dart:io';

void main() {
  double piValue = 3.141592653589793; 

  print('Enter the radius of the circle:');
  String radiusString = stdin.readLineSync()!;

  double radius = double.parse(radiusString);
  double area = piValue * radius * radius;
  double circumference = 2 * piValue * radius;

  print('The area of the circle is: $area');
  print('The circumference of the circle is: $circumference');
}
