import 'dart:convert';
import 'dart:io';
import 'package:capstone/models/StudentLogin.dart';
import 'package:capstone/url.dart';
import 'package:http/http.dart' as http;

class Login { 
  final Url url = Url();

  Future<StudentLogin> getStudent(String user, String pwd) async {
    final res = await http.put(
      url.student_login,
      body: {
        'user': user, 
        'pwd': pwd
      }
    );

    print(res.body.toString());

    if(res.statusCode == 200){
      return StudentLogin.fromJson(json.decode(res.body));
    }else{
      return null;
    }
  }
}