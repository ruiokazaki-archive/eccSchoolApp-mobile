// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Plan _$$_PlanFromJson(Map<String, dynamic> json) => _$_Plan(
      title: json['title'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_PlanToJson(_$_Plan instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
    };

_$_CalendarDay _$$_CalendarDayFromJson(Map<String, dynamic> json) =>
    _$_CalendarDay(
      day: json['day'] as String,
      plans: (json['plans'] as List<dynamic>)
          .map((e) => Plan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarDayToJson(_$_CalendarDay instance) =>
    <String, dynamic>{
      'day': instance.day,
      'plans': instance.plans.map((e) => e.toJson()).toList(),
    };
