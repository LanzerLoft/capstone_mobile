import 'package:json_annotation/json_annotation.dart';

part 'MPReport.g.dart';

@JsonSerializable()
class MPReport {
  bool _status;
  String _token;
  List<Data> _data;

  MPReport({bool status, String token, List<Data> data}) {
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

  MPReport.fromJson(Map<String, dynamic> json) {
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
  String _reportId;
  String _id;
  String _caseName;
  String _narrationIncident;
  String _remark;
  String _dateCreated;
  String _raName;
  @JsonKey(defaultValue: '')
  String _studentId;    
  @JsonKey(defaultValue: '')
  String _witnessStatement;
  @JsonKey(defaultValue: 'No Data')
  String _statusName;
  String _raId;

  Data(
      {String reportId,
      String id,
      String caseName,
      String narrationIncident,
      String remark,
      String dateCreated,
      String raName,
       studentId,
       witnessStatement,
      String statusName,
      String raId}) {
    this._reportId = reportId;
    this._id = id;
    this._caseName = caseName;
    this._narrationIncident = narrationIncident;
    this._remark = remark;
    this._dateCreated = dateCreated;
    this._raName = raName;
    this._studentId = studentId;
    this._witnessStatement = witnessStatement;
    this._statusName = statusName;
    this._raId = raId;
  }

  String get reportId => _reportId;
  set reportId(String reportId) => _reportId = reportId;
  String get id => _id;
  set id(String id) => _id = id;
  String get caseName => _caseName;
  set caseName(String caseName) => _caseName = caseName;
  String get narrationIncident => _narrationIncident;
  set narrationIncident(String narrationIncident) =>
      _narrationIncident = narrationIncident;
  String get remark => _remark;
  set remark(String remark) => _remark = remark;
  String get dateCreated => _dateCreated;
  set dateCreated(String dateCreated) => _dateCreated = dateCreated;
  String get raName => _raName;
  set raName(String raName) => _raName = raName;
   get studentId => _studentId;
  set studentId( studentId) => _studentId = studentId;
   get witnessStatement => _witnessStatement;
  set witnessStatement( witnessStatement) =>
      _witnessStatement = witnessStatement;
  String get statusName => _statusName;
  set statusName(String statusName) => _statusName = statusName;
  String get raId => _raId;
  set raId(String raId) => _raId = raId;

  Data.fromJson(Map<String, dynamic> json) {
    _reportId = json['report_id'];
    _id = json['id'];
    _caseName = json['case_name'];
    _narrationIncident = json['narration_incident'];
    _remark = json['remark'];
    _dateCreated = json['date_created'];
    _raName = json['ra_name'];
    _studentId = json['student_id'];
    _witnessStatement = json['witness_statement'];
    _statusName = json['status_name'];
    _raId = json['ra_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['report_id'] = this._reportId;
    data['id'] = this._id;
    data['case_name'] = this._caseName;
    data['narration_incident'] = this._narrationIncident;
    data['remark'] = this._remark;
    data['date_created'] = this._dateCreated;
    data['ra_name'] = this._raName;
    data['student_id'] = this._studentId;
    data['witness_statement'] = this._witnessStatement;
    data['status_name'] = this._statusName;
    data['ra_id'] = this._raId;
    return data;
  }
}
