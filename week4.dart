// Encapsulation
class Person {
  // Private variables
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String name) => _name = name;

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int age) => _age = age;

  // Method to introduce the person
  void introduce() {
    print('Name: $_name, Age: $_age');
  }
}

// Inheritance
class Student extends Person {
  String _studentId;

  // Constructor
  Student(String name, int age, this._studentId) : super(name, age);

  // Getter for studentId
  String get studentId => _studentId;

  // Setter for studentId
  set studentId(String studentId) => _studentId = studentId;

  // Override the introduce method
  @override
  void introduce() {
    super.introduce();
    print('Student ID: $_studentId');
  }
}

// Polymorphism
class Teacher extends Person {
  String _subject;

  // Constructor
  Teacher(String name, int age, this._subject) : super(name, age);

  // Getter for subject
  String get subject => _subject;

  // Setter for subject
  set subject(String subject) => _subject = subject;

  // Override the introduce method
  @override
  void introduce() {
    super.introduce();
    print('Subject: $_subject');
  }
}

// Abstraction
abstract class Animal {
  // Abstract method
  void makeSound();

  // Non-abstract method
  void sleep() {
    print('The animal is sleeping.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof Woof');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow Meow');
  }
}

void main() {
  // Demonstrate Encapsulation
  var person = Person('Alice', 30);
  person.introduce();
  person.name = 'Bob'; // Using setter to modify name
  person.age = 25; // Using setter to modify age
  person.introduce();

  // Demonstrate Inheritance and Polymorphism
  var student = Student('Charlie', 20, 'S12345');
  student.introduce();

  var teacher = Teacher('David', 40, 'Math');
  teacher.introduce();

  // Demonstrate Abstraction
  Animal dog = Dog();
  dog.makeSound();
  dog.sleep();

  Animal cat = Cat();
  cat.makeSound();
  cat.sleep();
}