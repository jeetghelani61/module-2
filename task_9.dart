import 'dart:io';

void calculateFactorial(int n) {
  int fact = 1;

  if (n < 0) {
    print('Factorial is not defined for negative numbers.');
  } else {
    for (int i = 1; i <= n; i++) {
      fact *= i;
    }
    print('The factorial of $n is $fact');
  }
}

void main() {
  print('Enter a number:');
  int n = int.parse(stdin.readLineSync()!);

  calculateFactorial(n);
}
