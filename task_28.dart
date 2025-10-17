// task_28.dart
Future<void> fetchWeather() async {
  print('Initiating weather data request...');
  
  await Future.delayed(Duration(seconds: 2));
  print('Waiting for response from server...');
  
  await Future.delayed(Duration(seconds: 2));
  print('Parsing weather data...');
  
  await Future.delayed(Duration(seconds: 1));
  print('Weather data loaded successfully: 25°C, Sunny ☀️');
}

void main() {
  fetchWeather();
}