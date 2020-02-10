import 'package:capstone/pages/dashboard.dart';
import 'package:capstone/pages/faculty_login.dart';
import 'package:capstone/pages/loading.dart';
import 'package:capstone/pages/student_login.dart';
import 'package:capstone/pages/student_teacher.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Frontlogin(),
      routes: {
        '/student_login': (c) => StudentLogin(),
        '/dashboard': (c) => Dashboard(),
        '/faculty_login': (c) => Facultylogin(),
        '/front_login': (c) => Frontlogin(),
        '/loading': (c) => Loading()  
      }
    );
  }
}
