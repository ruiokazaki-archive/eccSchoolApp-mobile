// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attendance _$$_AttendanceFromJson(Map<String, dynamic> json) =>
    _$_Attendance(
      title: json['title'] as String,
      rate: json['rate'] as String,
      count: json['count'] as String,
      absence: json['absence'] as String,
      lateness: json['lateness'] as String,
    );

Map<String, dynamic> _$$_AttendanceToJson(_$_Attendance instance) =>
    <String, dynamic>{
      'title': instance.title,
      'rate': instance.rate,
      'count': instance.count,
      'absence': instance.absence,
      'lateness': instance.lateness,
    };
