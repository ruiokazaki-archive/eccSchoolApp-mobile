import 'package:ecc_school_app_mobile/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsDetailScreen extends HookConsumerWidget {
  final String newsId;
  const NewsDetailScreen(this.newsId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsDetail = ref.watch(newsDetailNotifierProvider);
    ref.read(newsDetailNotifierProvider.notifier).getNewsDetail(newsId);

    return Scaffold(
      appBar: AppBar(title: const Text('News Detail Screen')),
      body: Center(
        child: Column(
          children: [
            Text(newsDetail.toString()),
          ],
        ),
      ),
    );
  }
}
