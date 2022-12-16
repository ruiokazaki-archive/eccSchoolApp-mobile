// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      tag: json['tag'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'tag': instance.tag,
      'link': instance.link,
    };

_$_NewsDetail _$$_NewsDetailFromJson(Map<String, dynamic> json) =>
    _$_NewsDetail(
      title: json['title'] as String,
      body: json['body'] as String,
      date: json['date'] as String,
      tag: json['tag'] as String,
      attachment: (json['attachment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_NewsDetailToJson(_$_NewsDetail instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'date': instance.date,
      'tag': instance.tag,
      'attachment': instance.attachment,
    };
