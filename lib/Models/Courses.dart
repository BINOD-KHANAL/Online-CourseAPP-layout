
class Courses{
  late String courseName;
  late String courseIcon;

  Courses({
    required this.courseName,
    required this.courseIcon
});

}
List<Courses> courses = [
  Courses(courseName:'flutter', courseIcon: 'assets/images/flutter-logo.png'),
  Courses(courseName: 'Accounting', courseIcon: 'assets/images/budget.png'),
  Courses(courseName: 'English', courseIcon: 'assets/images/eng.png'),
  Courses(courseName: 'GraphicsDesign', courseIcon: 'assets/images/graphic-design.png'),
  Courses(courseName: 'C++', courseIcon: 'assets/images/c.png'),
  Courses(courseName: 'ExtraCourse', courseIcon: 'assets/images/classroom.png'),


] ;



