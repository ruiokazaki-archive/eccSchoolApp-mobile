import 'package:ecc_school_app_mobile/helpers/utils/news_colors_generator.dart';
import 'package:ecc_school_app_mobile/providers/news_provider.dart';
import 'package:ecc_school_app_mobile/routes/app_router.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsScreen extends HookConsumerWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsNotifierProvider);

    return layout(
      pageTitle: 'お知らせ',
      context: context,
      body: ListView.separated(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black87,
              backgroundColor: Colors.white,
            ),
            onPressed: () => AppRouter.pushNamed(
              Routes.NewsDetailRoute,
              args: {news[index].id},
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: CircleAvatar(
                      backgroundColor:
                          NewsColorsGenerator.getColor(news[index].tag),
                      radius: 20.0,
                      child: Text(
                        news[index].tag[0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              news[index].tag,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            Text(
                              news[index].date,
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          news[index].title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
          );
        },
      ),
    );
  }
}
