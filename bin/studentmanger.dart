import 'pesrson.dart';

class Students {
  static List<Student> studentsList = [];
  int count = 0;

  static void addStudent(Student s) {
    studentsList.add(s);
  }

  static void removeStudent(String id) {
    studentsList.remove(studentsList.firstWhere((element) => element.id == id));
  }

  static void printStudentData([String? id]) {
    if (studentsList.any((element) => element.id == id) == false) {
      print('please enter valid id ');
    } else if (id != null) {
      Student.studentData(
          studentsList.firstWhere((element) => element.id == id));
      print('');
    } else {
      for (int i = 0; i < studentsList.length; i++) {
        Student.studentData(studentsList[i]);
        print('');
      }
    }
  }

  static void addSubject(String? id, String name, double grade) {
    if (studentsList.any((element) => element.id == id) == false) {
      print('please enter valid id ');
    } else {
      Student.addSubject(
          studentsList.firstWhere((element) => element.id == id), name, grade);
    }
  }

  static void calculateStudentGrade(String? id) {
    if (studentsList.any((element) => element.id == id) == false) {
      print('please enter valid id ');
    } else if (studentsList
        .firstWhere((element) => element.id == id)
        .subjects
        .isEmpty) {
      print('student have no subject');
    } else {
      print(
          '${studentsList.firstWhere((element) => element.id == id).name} grades is :');
      Student.getSubject(
          studentsList.firstWhere((element) => element.id == id));
      print('');
      print(studentsList.firstWhere((element) => element.id == id).subjects);
    }
  }
}