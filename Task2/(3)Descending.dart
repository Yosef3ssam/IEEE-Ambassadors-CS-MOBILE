int descendingOrder(int num) {
  List<int> list = num.toString().split('').map(int.parse).toList();
  list.sort((a, b) => b.compareTo(a));
  return int.parse(list.join());
}
