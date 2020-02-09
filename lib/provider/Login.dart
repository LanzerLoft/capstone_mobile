import 'dart:convert';
import 'dart:io';
import 'package:capstone/models/StudentLogin.dart';
import 'package:capstone/url.dart';
import 'package:http/http.dart' as http;
import 'package:capstone/models/ErrorStatus.dart';

class Login { 
  final Url url = Url();

  Future<StudentLogin> getStudent(String user, String pwd) async {
    final res = await http.post(
      url.student_login,
      body: {
        'user': user, 
        'pwd': pwd
      }
    );

    print(res.body.toString());

    return StudentLogin.fromJson(json.decode(res.body));

  }
}