import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class News with _$News {
  const factory News({
    required String id,
    required String title,
    required String date,
    required String tag,
    required String link,
  }) = _News;

  factory News.fromJson(JSON json) => _$NewsFromJson(json);
}

@freezed
class NewsDetail with _$NewsDetail {
  const factory NewsDetail({
    required String title,
    required String body,
    required String date,
    required String tag,
    List<String>? attachment,
  }) = _NewsDetail;

  factory NewsDetail.fromJson(JSON json) => _$NewsDetailFromJson(json);
}
