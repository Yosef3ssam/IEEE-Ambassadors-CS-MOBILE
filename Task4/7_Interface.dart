abstract class Animal {
  void eat();
  void drink();
}
class Dog implements Animal{
  @override
  void eat() {
    print('Dog is eating');
  }
  @override
  void drink(){
    print('Dog is drinking');
  }
}
void main() {
  var myDog = Dog();
  myDog.eat();
  myDog.drink();
}
//implements is like i want your functions empty and ill input what i need inside.
//extends is like i want everything that the parent has.

