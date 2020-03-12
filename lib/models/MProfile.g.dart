// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MProfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MProfile _$MProfileFromJson(Map<String, dynamic> json) {
  return MProfile(
    status: json['status'] as bool,
    token: json['token'] as String,
    studentCount: json['studentCount'] as int,
    reportCount: json['reportCount'] as int,
    reportPending: json['reportPending'] as int,
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MProfileToJson(MProfile instance) => <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'studentCount': instance.studentCount,
      'reportCount': instance.reportCount,
      'reportPending': instance.reportPending,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'] as String,
    idNumber: json['idNumber'] as String,
    surName: json['surName'] as String,
    firstName: json['firstName'] as String,
    middleName: json['middleName'] as String,
    courseAbbv: json['courseAbbv'] as String,
    courseName: json['courseName'] as String,
    yearLevel: json['yearLevel'] as String,
    academicYear: json['academicYear'] as String,
    birthdate: json['birthdate'] as String,
    birthPlace: json['birthPlace'] as String,
    genderName: json['genderName'] as String,
    cName: json['cName'] as String,
    civilName: json['civilName'] as String,
    religion: json['religion'] as String,
    email: json['email'] as String,
    contactNo: json['contactNo'] as String,
    pAddress: json['pAddress'] as String,
    tAddress: json['tAddress'] as String,
    mother: json['mother'] as String,
    motherNo: json['motherNo'] as String,
    father: json['father'] as String,
    fatherNo: json['fatherNo'] as String,
    guardian: json['guardian'] as String,
    guardianNo: json['guardianNo'] as String,
    imgPath: json['imgPath'] as String,
    dateCreated: json['dateCreated'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'idNumber': instance.idNumber,
      'surName': instance.surName,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'courseAbbv': instance.courseAbbv,
      'courseName': instance.courseName,
      'yearLevel': instance.yearLevel,
      'academicYear': instance.academicYear,
      'birthdate': instance.birthdate,
      'birthPlace': instance.birthPlace,
      'genderName': instance.genderName,
      'cName': instance.cName,
      'civilName': instance.civilName,
      'religion': instance.religion,
      'email': instance.email,
      'contactNo': instance.contactNo,
      'pAddress': instance.pAddress,
      'tAddress': instance.tAddress,
      'mother': instance.mother,
      'motherNo': instance.motherNo,
      'father': instance.father,
      'fatherNo': instance.fatherNo,
      'guardian': instance.guardian,
      'guardianNo': instance.guardianNo,
      'imgPath': instance.imgPath,
      'dateCreated': instance.dateCreated,
    };
