class Person {
  Person(this.id, this.name, this.address, this.age);
  late String? id, name, address;
  late int? age;
}

class Student extends Person {
  Student(String? id, String? name, String? address, int? age, this.email,
      this.phone)
      : super(id, name, address, age);
  String? email;
  int? phone;
  final Map<String?, double?> subjects = {};

  static void addSubject(Student s, String name, double grade) {
    s.subjects[name] = grade;
  }

  static void getSubject(
    Student s,
  ) {
    s.subjects.forEach((key, value) {
      if (value! >= 50) {
        print('$key : $value (success)');
      } else {
        print('$key $value (fail)');
      }
    });
  }

  static void studentData(Student s) {
    print('student id : ${s.id}');
    print('student name : ${s.name}');
    print('student age : ${s.age}');
    print('student address : ${s.address}');
    print('student subjects : ${s.subjects}');
  }
}