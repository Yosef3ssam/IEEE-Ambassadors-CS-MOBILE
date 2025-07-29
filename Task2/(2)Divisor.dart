import 'dart:io';
void main() {
  print('Enter a number:');

  String? num = stdin.readLineSync();

  if (num == null || num.trim().isEmpty) {
    print('Please enter a number.');
    return;
  }
  int numInt = int.parse(num.trim());

  print('The divisors of $numInt');
  for (int i = 1; i <= numInt; i++){
    if (numInt % i == 0) {
    print('$i');
    } 
  }
}