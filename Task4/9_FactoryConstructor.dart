class Animal {
  final String name;

  Animal(this.name);

  factory Animal.create(String? name) {
    if (name == null || name.trim().isEmpty) {
      return Animal('Unknown');
    }
    return Animal(name);
  }

  void speak() {
    print('Hello, I am $name');
  }
}

void main() {
  var a = Animal.create('Tiger');
  var b = Animal.create('');

  a.speak();
  b.speak();
}
