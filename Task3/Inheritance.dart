
class Person {
  late String name;
  late int age;

  Person (this.name, this.age);

  void displayInfo(){
    print('Hi im $name and im $age ');
  }
}

class Student extends Person{
 late int grade;
   
 Student(String name, int age, this.grade) : super(name, age);  

  void displayStudent (){
   displayInfo(); 
   print('My grade is $grade.');
  }
}

class Teacher extends Student{

  late int teachingExp ;
  
  Teacher(String name,int age,this.teachingExp) :super(name, age, teachingExp);
  
  void DisplayTeacher (){
    print('hello im $name and im $age old and i have been teaching for $teachingExp years.');
    }
  }

void main () {
  var student = Student('joe', 19, 25);
  student.displayStudent();
  var teacher = Teacher('Mr.Smith', 42, 21);
  teacher.DisplayTeacher();
}
//the super(name, age);  gets the values of name and age from the parent :)

// tried using everything we learnt in the videos!