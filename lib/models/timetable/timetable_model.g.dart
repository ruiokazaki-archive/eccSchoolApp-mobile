// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subject _$$_SubjectFromJson(Map<String, dynamic> json) => _$_Subject(
      period: json['period'] as String,
      subjectTitle: json['subjectTitle'] as String,
      classroom: json['classroom'] as String,
      teacher: json['teacher'] as String,
    );

Map<String, dynamic> _$$_SubjectToJson(_$_Subject instance) =>
    <String, dynamic>{
      'period': instance.period,
      'subjectTitle': instance.subjectTitle,
      'classroom': instance.classroom,
      'teacher': instance.teacher,
    };

_$_Timetable _$$_TimetableFromJson(Map<String, dynamic> json) => _$_Timetable(
      date: json['date'] as String,
      weekday: json['weekday'] as String,
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TimetableToJson(_$_Timetable instance) =>
    <String, dynamic>{
      'date': instance.date,
      'weekday': instance.weekday,
      'subjects': instance.subjects.map((e) => e.toJson()).toList(),
    };
