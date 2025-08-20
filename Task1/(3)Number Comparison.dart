void main() {
  int a = 10;
  int b = 20;
  int c = 15;
  if (a >= b && a >= c){
    print('Largest number: $a');
  } else if (b >= a && b >= c){
    print('Largest number: $b');
  }else {
    print('Largest number: $c');
  }

  if (a <= b && a <= c){
    print("Smallest number: $a");
  } else if (b <= a && b <= c){
  print("Smallest number: $b");
  }else
   {print("Smallest number: $c");
  }
}