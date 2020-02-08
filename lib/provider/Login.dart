import 'dart:convert';
import 'dart:io';
import 'package:capstone/models/StudentLogin.dart';
import 'package:capstone/url.dart';
import 'package:http/http.dart' as http;

class PCheckout { 
  Future<StudentLogin> getCheckout(String token) async {
    final Url url = Url().student_login + 

    final res = await http.put(
      local, 
      headers: {
        HttpHeaders.authorizationHeader: token
      }
    );

    print(res.body.toString());

    if(res.statusCode == 201){
      return MFirst.fromJson(json.decode(res.body));
    
    }else{
      return null;
    }
  }
}