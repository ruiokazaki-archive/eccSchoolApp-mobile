import 'package:ecc_school_app_mobile/providers/news_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/news/news_item.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/async_value_layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsScreen extends HookConsumerWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(newsNotifierProvider);

    return layout(
      selectedBottomNavigationIndex: 3,
      pageTitle: 'お知らせ',
      context: context,
      body: asyncValueLayout(
        context: context,
        asyncValue: asyncValue,
        builder: (news) => ListView.separated(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return newsItem(news: news, index: index);
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
            );
          },
        ),
      ),
    );
  }
}
