import 'package:ecc_school_app_mobile/models/news/news_model.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/services/repositories/news_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsNotifierProvider =
    StateNotifierProvider<NewsNotifier, List<News>>((ref) => NewsNotifier(ref));

class NewsNotifier extends StateNotifier<List<News>> {
  NewsNotifier(this.ref) : super([]) {
    getNews();
  }

  final newsRepository = NewsRepository();
  final Ref ref;

  void getNews() async {
    final userAuth = ref.read(authNotifierProvider);

    if (userAuth == null) return;

    final news = await newsRepository.getNews(userAuth);
    state = news;
  }
}

final newsDetailNotifierProvider =
    StateNotifierProvider<NewsDetailNotifier, AsyncValue<List<NewsDetail>>>(
        (ref) => NewsDetailNotifier(ref));

class NewsDetailNotifier extends StateNotifier<AsyncValue<List<NewsDetail>>> {
  NewsDetailNotifier(this.ref) : super(const AsyncValue.loading());

  final newsRepository = NewsRepository();
  final Ref ref;

  void getNewsDetail(String newsId) async {
    final userAuth = ref.read(authNotifierProvider);

    if (userAuth == null) return;

    final news = await newsRepository.getNewsDetail(userAuth, newsId);
    state = AsyncData(news);
  }
}
