import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;
import 'package:ecc_school_app_mobile/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsScreen extends HookConsumerWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  const routes.NewsDetailRoute("16711526341267211566")
                      .go(context),
              child: const Text('Go to the News screen'),
            ),
            const Text("Attendance Screen"),
            Text(news.toString()),
            TextButton(
              onPressed: () {
                ref.read(newsNotifierProvider.notifier).getNews();
              },
              child: const Text("Get News"),
            )
          ],
        ),
      ),
    );
  }
}
