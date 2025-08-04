mixin Fly {
  void fly() {
    print('This bird flies');
  }
}

mixin Swim {
  void swim() {
    print('This animal swims');
  }
}

class bird with Fly {}
class Animal with Swim {}

void main() {
  var myBird = bird();
  myBird.fly();

  var myAnimal = Animal();
  myAnimal.swim();
}