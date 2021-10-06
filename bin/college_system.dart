import 'pesrson.dart';
import 'studentmanger.dart';

void main(List<String> arguments) {
  //creating the students
  Student s1 =
      Student('maz1111', 'mazen', 'ssfsdsdd', 23, 'mazen@gmail', 0114422544);
  Student s2 =
      Student('ahm2222', 'ahmed', 'ssddffggs', 24, 'ahmed@gmail', 01133497628);
  Student s3 =
      Student('aly3333', 'aly', 'wgwrgrs', 21, 'aly@gmail', 012659853256);
  Student s4 =
      Student('sar4444', 'sara', 'hgfdss', 24, 'sara@gmail', 01977854224);

  //adding the students to the student list
  Students.addStudent(s1);
  Students.addStudent(s2);
  Students.addStudent(s3);
  Students.addStudent(s4);

//removing a student with id
  Students.removeStudent('sar4444');

  //adding subjects to student by id
  Students.addSubject('ahm2222', 'chemistry', 50);
  Students.addSubject('ahm2222', 'math', 70);
  Students.addSubject('ahm2222', 'arabic', 30);

  Students.addSubject('maz1111', 'math', 70);

  //printing the student data by id
  Students.printStudentData('aly3333');

  //printing data of all students
  Students.printStudentData();

  //calculating specific student grades
  Students.calculateStudentGrade('ahm22242');
}