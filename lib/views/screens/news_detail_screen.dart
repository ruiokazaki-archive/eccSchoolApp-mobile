import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:ecc_school_app_mobile/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsDetailScreen extends HookConsumerWidget {
  final String newsId;
  const NewsDetailScreen(this.newsId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsDetail = ref.watch(newsDetailNotifierProvider);

    useEffect(() {
      ref.read(newsDetailNotifierProvider.notifier).getNewsDetail(newsId);
      return null;
    }, [newsId]);

    return Scaffold(
      appBar: AppBar(title: Text(newsDetail[0].title)),
      body: SingleChildScrollView(
        child: Html(
          onLinkTap: (url, _, __, ___) {
            openUrl(url);
          },
          tagsList: Html.tags..addAll(["attachment"]),
          customRender: {
            "attachment": (RenderContext context, Widget child) {
              return ElevatedButton(
                onPressed: () {
                  debugPrint(context.tree.element!.attributes["href"]!);
                  openUrl(context.tree.element!.attributes["href"]!);
                },
                child: Text(context.tree.element!.innerHtml),
              );
            },
          },
          data:
              "<h2>${newsDetail[0].title}</h2><p>${newsDetail[0].date}</p>${newsDetail[0].body}<br />${newsDetail[0].attachment?.asMap().entries.map((entry) => '<attachment href="${entry.value}">添付ファイル${entry.key + 1}</attachment>').join() ?? ""}",
        ),
      ),
    );
  }
}
