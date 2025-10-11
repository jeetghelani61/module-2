import 'dart:io';

void main() {
  print('Enter a number to check if it is prime:');
  
  int number = int.parse(stdin.readLineSync()!); 

  if (number <= 1) {
    print('$number is not a prime number.');
    return; 
  }

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      print('$number is not a prime number.');
      return; 
    }
  }

 
  print('$number is a prime number.');
}
