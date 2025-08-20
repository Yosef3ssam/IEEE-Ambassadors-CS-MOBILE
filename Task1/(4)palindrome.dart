import 'dart:io';
void main() {

  String? word = stdin.readLineSync()!;
  
  String? reversed = word.split('').reversed.join();
  
  if (word == reversed) {
    print ('It is a palindrome!');
  }else  {
    print("It is NOT a palindrome!");
  }

}