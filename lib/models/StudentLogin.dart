import 'package:capstone/models/Data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'StudentLogin.g.dart';

@JsonSerializable()
class StudentLogin {
  bool status;
  String token;
  Data data;
  String message; 

  StudentLogin({this.status, this.token, this.data, this.message});

  StudentLogin.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}