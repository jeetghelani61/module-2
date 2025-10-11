import 'dart:io';

// Converts Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Converts Fahrenheit to Celsius
double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main() {
  print('Temperature Converter');
  print('1. Celsius to Fahrenheit');
  print('2. Fahrenheit to Celsius');

  print('Choose conversion type (1 or 2):');
  String? choice = stdin.readLineSync();

  print('Enter the temperature:');
  String? tempString = stdin.readLineSync();

  double temp = double.parse(tempString!);

  if (choice == '1') {
    double fahrenheit = celsiusToFahrenheit(temp);
    print('$temp°C is equal to ${fahrenheit.toStringAsFixed(2)}°F');
  } else if (choice == '2') {
    double celsius = fahrenheitToCelsius(temp);
    print('$temp°F is equal to ${celsius.toStringAsFixed(2)}°C');
  } else {
    print('Invalid choice');
  }
}
