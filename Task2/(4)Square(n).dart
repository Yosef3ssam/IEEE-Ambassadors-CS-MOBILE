import 'dart:math';

int squareSum (List<int> list){
  if (list.isEmpty) return 0;
  
  List <double> newList = [];
  int i = 0;
  for (i in list){
   double newNum = pow(i, 2).toDouble();
   newList.add(newNum);
  }
  double sum = newList.reduce((a,b) => a + b );
  return sum.toInt();
}

void main(){
  List <int> list = [1, 2, 2];
  print(squareSum(list));
}
