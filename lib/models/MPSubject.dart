import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class MPSubject {
  bool _status;
  String _token;
  List<Data> _data;

  MPSubject({bool status, String token, List<Data> data}) {
    this._status = status;
    this._token = token;
    this._data = data;
  }

  bool get status => _status;
  set status(bool status) => _status = status;
  String get token => _token;
  set token(String token) => _token = token;
  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;

  MPSubject.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _token = json['token'];
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['token'] = this._token;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@JsonSerializable()
class Data {
  String _subjectId;
  String _courseId;
  String _subjectCode;
  String _subjectName;
  @JsonKey(defaultValue: "No Data")
  String _facultyName;

  Data(
      {String subjectId,
      String courseId,
      String subjectCode,
      String subjectName,
      String facultyName}) {
    this._subjectId = subjectId;
    this._courseId = courseId;
    this._subjectCode = subjectCode;
    this._subjectName = subjectName;
    this._facultyName = facultyName;
  }

  String get subjectId => _subjectId;
  set subjectId(String subjectId) => _subjectId = subjectId;
  String get courseId => _courseId;
  set courseId(String courseId) => _courseId = courseId;
  String get subjectCode => _subjectCode;
  set subjectCode(String subjectCode) => _subjectCode = subjectCode;
  String get subjectName => _subjectName;
  set subjectName(String subjectName) => _subjectName = subjectName;
  String get facultyName => _facultyName;
  set facultyName(String facultyName) => _facultyName = facultyName;

  Data.fromJson(Map<String, dynamic> json) {
    _subjectId = json['subject_id'];
    _courseId = json['course_id'];
    _subjectCode = json['subject_code'];
    _subjectName = json['subject_name'];
    _facultyName = json['faculty_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subject_id'] = this._subjectId;
    data['course_id'] = this._courseId;
    data['subject_code'] = this._subjectCode;
    data['subject_name'] = this._subjectName;
    data['faculty_name'] = this._facultyName;
    return data;
  }
}
