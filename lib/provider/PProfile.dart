import 'dart:convert';
import 'dart:io';
import 'package:capstone/models/MPReport.dart';
import 'package:capstone/models/MPSubject.dart';
import 'package:capstone/models/MProfile.dart';
import 'package:capstone/utils/url.dart';
import 'package:http/http.dart' as http;

class PProfile { 
  final Url url = Url();

  Future<MProfile> getProfile(String token) async {
    final res = await http.get(
      url.student_data,
      headers: {HttpHeaders.authorizationHeader: token},
    );
    return new Future.delayed(const Duration(seconds: 1), () => MProfile.fromJson(json.decode(res.body)));
 
  }

  Future<MPReport> getReport(String token) async {

    final res = await http.get(
      url.student_report,
      headers: {HttpHeaders.authorizationHeader: token},
    );
    
    return new Future.delayed(const Duration(seconds: 1), () => MPReport.fromJson(json.decode(res.body)));
 
  }

  Future<MPSubject> getSubject(String token) async {

    final res = await http.get(
      url.student_subject,
      headers: {HttpHeaders.authorizationHeader: token},
    );

    print(res.body.toString());
    
    return new Future.delayed(const Duration(seconds: 1), () => MPSubject.fromJson(json.decode(res.body)));
 
  }
}