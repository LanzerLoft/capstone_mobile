import 'package:json_annotation/json_annotation.dart';

part 'MProfile.g.dart';

@JsonSerializable()
class MProfile {
  bool _status;
  String _token;
  int _studentCount;
  int _reportCount;
  int _reportPending;
  List<Data> _data;

  MProfile(
      {bool status,
      String token,
      int studentCount,
      int reportCount,
      int reportPending,
      List<Data> data}) {
    this._status = status;
    this._token = token;
    this._studentCount = studentCount;
    this._reportCount = reportCount;
    this._reportPending = reportPending;
    this._data = data;
  }

  bool get status => _status;
  set status(bool status) => _status = status;
  String get token => _token;
  set token(String token) => _token = token;
  int get studentCount => _studentCount;
  set studentCount(int studentCount) => _studentCount = studentCount;
  int get reportCount => _reportCount;
  set reportCount(int reportCount) => _reportCount = reportCount;
  int get reportPending => _reportPending;
  set reportPending(int reportPending) => _reportPending = reportPending;
  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;

  MProfile.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _token = json['token'];
    _studentCount = json['student_count'];
    _reportCount = json['report_count'];
    _reportPending = json['report_pending'];
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
    data['student_count'] = this._studentCount;
    data['report_count'] = this._reportCount;
    data['report_pending'] = this._reportPending;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@JsonSerializable()
class Data {
  String _id;
  String _idNumber;
  String _surName;
  String _firstName;
  String _middleName;
  String _courseAbbv;
  String _courseName;
  String _yearLevel;
  String _academicYear;
  String _birthdate;
  String _birthPlace;
  String _genderName;
  String _cName;
  String _civilName;
  String _religion;
  String _email;
  String _contactNo;
  String _pAddress;
  String _tAddress;
  String _mother;
  String _motherNo;
  String _father;
  String _fatherNo;
  String _guardian;
  String _guardianNo;
  String _imgPath;
  String _dateCreated;

  Data(
      {String id,
      String idNumber,
      String surName,
      String firstName,
      String middleName,
      String courseAbbv,
      String courseName,
      String yearLevel,
      String academicYear,
      String birthdate,
      String birthPlace,
      String genderName,
      String cName,
      String civilName,
      String religion,
      String email,
      String contactNo,
      String pAddress,
      String tAddress,
      String mother,
      String motherNo,
      String father,
      String fatherNo,
      String guardian,
      String guardianNo,
      String imgPath,
      String dateCreated}) {
    this._id = id;
    this._idNumber = idNumber;
    this._surName = surName;
    this._firstName = firstName;
    this._middleName = middleName;
    this._courseAbbv = courseAbbv;
    this._courseName = courseName;
    this._yearLevel = yearLevel;
    this._academicYear = academicYear;
    this._birthdate = birthdate;
    this._birthPlace = birthPlace;
    this._genderName = genderName;
    this._cName = cName;
    this._civilName = civilName;
    this._religion = religion;
    this._email = email;
    this._contactNo = contactNo;
    this._pAddress = pAddress;
    this._tAddress = tAddress;
    this._mother = mother;
    this._motherNo = motherNo;
    this._father = father;
    this._fatherNo = fatherNo;
    this._guardian = guardian;
    this._guardianNo = guardianNo;
    this._imgPath = imgPath;
    this._dateCreated = dateCreated;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get idNumber => _idNumber;
  set idNumber(String idNumber) => _idNumber = idNumber;
  String get surName => _surName;
  set surName(String surName) => _surName = surName;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get middleName => _middleName;
  set middleName(String middleName) => _middleName = middleName;
  String get courseAbbv => _courseAbbv;
  set courseAbbv(String courseAbbv) => _courseAbbv = courseAbbv;
  String get courseName => _courseName;
  set courseName(String courseName) => _courseName = courseName;
  String get yearLevel => _yearLevel;
  set yearLevel(String yearLevel) => _yearLevel = yearLevel;
  String get academicYear => _academicYear;
  set academicYear(String academicYear) => _academicYear = academicYear;
  String get birthdate => _birthdate;
  set birthdate(String birthdate) => _birthdate = birthdate;
  String get birthPlace => _birthPlace;
  set birthPlace(String birthPlace) => _birthPlace = birthPlace;
  String get genderName => _genderName;
  set genderName(String genderName) => _genderName = genderName;
  String get cName => _cName;
  set cName(String cName) => _cName = cName;
  String get civilName => _civilName;
  set civilName(String civilName) => _civilName = civilName;
  String get religion => _religion;
  set religion(String religion) => _religion = religion;
  String get email => _email;
  set email(String email) => _email = email;
  String get contactNo => _contactNo;
  set contactNo(String contactNo) => _contactNo = contactNo;
  String get pAddress => _pAddress;
  set pAddress(String pAddress) => _pAddress = pAddress;
  String get tAddress => _tAddress;
  set tAddress(String tAddress) => _tAddress = tAddress;
  String get mother => _mother;
  set mother(String mother) => _mother = mother;
  String get motherNo => _motherNo;
  set motherNo(String motherNo) => _motherNo = motherNo;
  String get father => _father;
  set father(String father) => _father = father;
  String get fatherNo => _fatherNo;
  set fatherNo(String fatherNo) => _fatherNo = fatherNo;
  String get guardian => _guardian;
  set guardian(String guardian) => _guardian = guardian;
  String get guardianNo => _guardianNo;
  set guardianNo(String guardianNo) => _guardianNo = guardianNo;
  String get imgPath => _imgPath;
  set imgPath(String imgPath) => _imgPath = imgPath;
  String get dateCreated => _dateCreated;
  set dateCreated(String dateCreated) => _dateCreated = dateCreated;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _idNumber = json['id_number'];
    _surName = json['sur_name'];
    _firstName = json['first_name'];
    _middleName = json['middle_name'];
    _courseAbbv = json['course_abbv'];
    _courseName = json['course_name'];
    _yearLevel = json['year_level'];
    _academicYear = json['academic_year'];
    _birthdate = json['birthdate'];
    _birthPlace = json['birth_place'];
    _genderName = json['gender_name'];
    _cName = json['c_name'];
    _civilName = json['civil_name'];
    _religion = json['religion'];
    _email = json['email'];
    _contactNo = json['contact_no'];
    _pAddress = json['p_address'];
    _tAddress = json['t_address'];
    _mother = json['mother'];
    _motherNo = json['mother_no'];
    _father = json['father'];
    _fatherNo = json['father_no'];
    _guardian = json['guardian'];
    _guardianNo = json['guardian_no'];
    _imgPath = json['img_path'];
    _dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['id_number'] = this._idNumber;
    data['sur_name'] = this._surName;
    data['first_name'] = this._firstName;
    data['middle_name'] = this._middleName;
    data['course_abbv'] = this._courseAbbv;
    data['course_name'] = this._courseName;
    data['year_level'] = this._yearLevel;
    data['academic_year'] = this._academicYear;
    data['birthdate'] = this._birthdate;
    data['birth_place'] = this._birthPlace;
    data['gender_name'] = this._genderName;
    data['c_name'] = this._cName;
    data['civil_name'] = this._civilName;
    data['religion'] = this._religion;
    data['email'] = this._email;
    data['contact_no'] = this._contactNo;
    data['p_address'] = this._pAddress;
    data['t_address'] = this._tAddress;
    data['mother'] = this._mother;
    data['mother_no'] = this._motherNo;
    data['father'] = this._father;
    data['father_no'] = this._fatherNo;
    data['guardian'] = this._guardian;
    data['guardian_no'] = this._guardianNo;
    data['img_path'] = this._imgPath;
    data['date_created'] = this._dateCreated;
    return data;
  }
}
