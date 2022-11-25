// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@immutable
class ApiEndpoint {
  final String baseUrl =
      dotenv.get('API_ENDPOINT', fallback: 'http://localhost:8080');

  // NOTE: 認証周りのエンドポイントが増える可能性があるため分けている
  static String auth(AuthEndpoint endpoint) {
    switch (endpoint) {
      case AuthEndpoint.SIGNIN:
        return "/signin";
    }
  }

  // NOTE: ユーザー固有のエンドポイント
  static String user(
    UserEndpoint endpoint, {
    required String uuid,
    String? query,
    String? subQuery,
  }) {
    switch (endpoint) {
      case UserEndpoint.NEWS:
        {
          return "$uuid/news";
        }
      case UserEndpoint.NEWS_DETAIL:
        {
          assert(query != null, 'newsId is required for NEWS_DETAIL endpoint');
          return "$uuid/news/$query";
        }
      case UserEndpoint.ATTENDANCE:
        {
          return "$uuid/attendance";
        }
      case UserEndpoint.TIMETABLE:
        {
          assert(
              query != null, 'dayOfWeekId is required for TIMETABLE endpoint');
          return "$uuid/timetable/$query";
        }
      case UserEndpoint.CALENDAR:
        {
          assert(query != null, 'year is required for CALENDAR endpoint');
          assert(subQuery != null, 'month is required for CALENDAR endpoint');
          return "$uuid/calendar/$query/$subQuery";
        }
    }
  }
}

enum AuthEndpoint {
  SIGNIN,
}

enum UserEndpoint {
  NEWS,
  NEWS_DETAIL,
  ATTENDANCE,
  TIMETABLE,
  CALENDAR,
}
