class GameCharacter {

  late String name;
  late int health;
  late int level;

  GameCharacter (this.name, this.health, this.level);
  void displayInfo(){
    print("Name: $name, Health: $health, Level: $level, ");
  }
}

class Player extends GameCharacter {
  late String role;

  Player (String name, int health, int level, this.role) : super(name,health ,level);
  void roleDisplay(){
    print('My role is $role');
  }
}

class You extends Player{
  late String weapon;

  You (String name, int health, int level, String role, this.weapon) : super(name,health ,level ,role);

  void attack(){
    print("$name atacks with $weapon");
  }
}

void main(){
  var me = You ("John" ,100, 10, "Ninja", "Katana");
  me.displayInfo();
  me.attack();
  me.roleDisplay();
}