import 'dart:io';

void main() {
  print(
      "------ Welcome to the program to find the minimum value in a list of numbers------");
  List<int> numbers = [];

  print("Enter the list of numbers separated by space: ");
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    numbers = input.split(' ').map((e) => int.parse(e)).toList();
  }
  ;
  print("The list of numbers is: $numbers");
  print("The minimum value in the list is: ${minValue(numbers)}");
}

int minValue(List<int> numbers) {
  int min = numbers[0];
  numbers.forEach((item) {
    if (item < min) {
      min = item;
    }
  });

  return min;
}
