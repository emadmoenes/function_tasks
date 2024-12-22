import 'dart:io';

void main() {
  print(
      "------ Welcome to the program to find the minimum value in a list of numbers------");
  List<int> numbers = [];

  // ask user to input the list of numbers
  print("Enter the list of numbers separated by space: ");
  String? input = stdin.readLineSync();
// convert the input string to a list of integers
  if (input != null && input.isNotEmpty) {
    numbers = input.split(' ').map((e) => int.parse(e)).toList();
  }
  ;
  // find the minimum value in the list
  print("The minimum value in the list is: ${minValue(numbers)}");
}

// Function to find the minimum value in a list
int minValue(List<int> numbers) {
  int min = numbers[0];
  numbers.forEach((item) {
    if (item < min) {
      min = item;
    }
  });

  return min;
}
