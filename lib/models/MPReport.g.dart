// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MPReport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MPReport _$MPReportFromJson(Map<String, dynamic> json) {
  return MPReport(
    status: json['status'] as bool,
    token: json['token'] as String,
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MPReportToJson(MPReport instance) => <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    reportId: json['reportId'] as String,
    id: json['id'] as String,
    caseName: json['caseName'] as String,
    narrationIncident: json['narrationIncident'] as String,
    remark: json['remark'] as String,
    dateCreated: json['dateCreated'] as String,
    raName: json['raName'] as String,
    studentId: json['studentId'],
    witnessStatement: json['witnessStatement'],
    statusName: json['statusName'] as String,
    raId: json['raId'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'reportId': instance.reportId,
      'id': instance.id,
      'caseName': instance.caseName,
      'narrationIncident': instance.narrationIncident,
      'remark': instance.remark,
      'dateCreated': instance.dateCreated,
      'raName': instance.raName,
      'studentId': instance.studentId,
      'witnessStatement': instance.witnessStatement,
      'statusName': instance.statusName,
      'raId': instance.raId,
    };
