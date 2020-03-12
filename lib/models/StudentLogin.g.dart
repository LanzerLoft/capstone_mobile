// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StudentLogin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentLogin _$StudentLoginFromJson(Map<String, dynamic> json) {
  return StudentLogin(
    status: json['status'] as bool,
    token: json['token'] as String,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$StudentLoginToJson(StudentLogin instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'data': instance.data,
      'message': instance.message,
    };
