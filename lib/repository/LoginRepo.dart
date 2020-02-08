import 'package:capstone/models/StudentLogin.dart';
import 'package:capstone/provider/Login.dart';

class LoginRepo { 
  final _init = Login();

  Future<StudentLogin> getCurrent(String user, String pwd) => _init.getStudent(user, pwd);
}