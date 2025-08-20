void main(){
  Monster monster = Monster();
  monster.printEnemy();
}
class Enemy{
  printEnemy(){
  print('enemy');
  }
}
class Monster extends Enemy{
  @override
  printEnemy(){
  print('monster');
  }
}