import 'package:capstone/bloc/bloc.dart';
import 'package:capstone/pages/student_login.dart';
import 'package:capstone/shared_preferences/spLogin.dart';
import 'package:flutter/material.dart';

class BSettings implements Bloc {
  logoutInit(context){
      SpLogin.removePref();
      print('logout');
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => StudentLogin()
        )
      );
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
  
}

final bs = BSettings();