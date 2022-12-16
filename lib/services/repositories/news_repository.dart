import 'package:ecc_school_app_mobile/models/news/news_model.dart';
import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/api_service.dart';

class NewsRepository {
  final _apiService = ApiService();

  Future<List<News>> getNews(
    UserAuth userAuth,
  ) async {
    final news = await _apiService.getCollection<News>(
      endpoint: ApiEndpoint.user(
        UserEndpoint.NEWS,
        uuid: userAuth.uuid,
      ),
      token: userAuth.token,
      converter: (responseBody) => News.fromJson(responseBody),
    );
    return news;
  }

  Future<List<NewsDetail>> getNewsDetail(
    UserAuth userAuth,
    String newsId,
  ) async {
    final news = await _apiService.getCollection<NewsDetail>(
      endpoint: ApiEndpoint.user(
        UserEndpoint.NEWS_DETAIL,
        uuid: userAuth.uuid,
        query: newsId,
      ),
      token: userAuth.token,
      converter: (responseBody) => NewsDetail.fromJson(responseBody),
    );
    return news;
  }
}
