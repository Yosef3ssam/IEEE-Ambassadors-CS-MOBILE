class Player{
  late String name;
  static int coins = 0;

  Player(this.name);
  coinPickup (){
    coins++;
  }
  printValue(){
    print('Your team has: $coins coins!');
  }
}
  class Player2 {
    Player2(String name);
  coinPickup(int i){
    Player.coins =Player.coins + i;  // we got the coins from the original class with Player.coins++; because it doesn't exist in this class Player2
  }
  printValue() {
    print('Your team has: ${Player.coins} coins!');
  }
  }
void main(){
  var b =Player('Yosef');
  b.coinPickup();
  b.printValue();

  var c = Player2('Ninja');
  c.coinPickup(5);
  c.printValue();
}