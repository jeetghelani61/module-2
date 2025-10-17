// task_26.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  
  try {
    print('Fetching data from API...');
    final response = await http.get(url);
    
    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON.
      var data = jsonDecode(response.body);
      print('Data fetched successfully:');
      print('User ID: ${data['userId']}');
      print('Title: ${data['title']}');
    } else {
      // If the server returns an error response, throw an exception.
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}

void main() {
  fetchData();
}