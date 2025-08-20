
class Student {
  late String name;
  late int age;

  Student(this.name, this.age);

  Student.guest() {
    name = 'guest';
    age = 0;
  }

  Student.fromScore(int score) {
    if (score > 90) {
      name = 'Topper';
      age = 18;
    } else {
      name = 'Average';
      age = 16;
    }
  }
}

void main() {
  var student1 = Student('Alice', 20);
  print('student1: ${student1.name}, ${student1.age}');

  var student2 = Student.guest();
  print('student2: ${student2.name}, ${student2.age}');

  var student3 = Student.fromScore(95);
  print('student3: ${student3.name}, ${student3.age}');

  var student4 = Student.fromScore(60);
  print('student4: ${student4.name}, ${student4.age}');
}
