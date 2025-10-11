import 'dart:io';

void main()
{
  print("Enter Your Marks");
  var marks = int.parse(stdin.readLineSync().toString());
   
  if (marks >= 90 && marks <= 100) {
    print("A Grade");
  } else if (marks >= 80 && marks < 90) {
    print("B Grade");
  } else if (marks >= 70 && marks < 80) {
    print("C Grade");
  } else if (marks >= 60 && marks < 70) {
    print("D Grade");
  } else if (marks >= 0 && marks < 60) {
    print("F Grade");
  } else {
    print("Fail");
  }
   
   
}
