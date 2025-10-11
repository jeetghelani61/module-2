import 'dart:io';

// Function to check and print if a string is a palindrome
void checkPalindrome(String input) {
  // Convert to lowercase manually
  String lower = '';
  for (int i = 0; i < input.length; i++) {
    int code = input.codeUnitAt(i);
    if (code >= 65 && code <= 90) {
      lower += String.fromCharCode(code + 32); // Convert A-Z to a-z
    } else {
      lower += input[i];
    }
  }

  // Remove non-alphanumeric characters manually
  String cleaned = '';
  for (int i = 0; i < lower.length; i++) {
    int code = lower.codeUnitAt(i);
    bool isLetter = (code >= 97 && code <= 122); // a-z
    bool isDigit = (code >= 48 && code <= 57);   // 0-9
    if (isLetter || isDigit) {
      cleaned += lower[i];
    }
  }

  // Reverse the cleaned string manually
  String reversed = '';
  for (int i = cleaned.length - 1; i >= 0; i--) {
    reversed += cleaned[i];
  }

  // Compare and print result
  if (cleaned == reversed) {
    print('"$input" is a palindrome.');
  } else {
    print('"$input" is not a palindrome.');
  }
}

void main() {
  print('Enter a string to check if it is a palindrome:');
  String input = stdin.readLineSync() ?? '';

  checkPalindrome(input);
}
