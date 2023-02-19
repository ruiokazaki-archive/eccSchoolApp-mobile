import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:ecc_school_app_mobile/providers/news_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/async_value_layout.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsDetailScreen extends HookConsumerWidget {
  final String newsId;
  const NewsDetailScreen({
    Key? key,
    required this.newsId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(newsDetailNotifierProvider);

    ref.read(newsDetailNotifierProvider.notifier).getNewsDetail(newsId);

    return layout(
      hideBottomNavigationBar: true,
      context: context,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: asyncValueLayout(
            context: context,
            asyncValue: asyncValue,
            builder: (newsDetail) => Html(
              onLinkTap: (url, _, __, ___) {
                openUrl(url);
              },
              tagsList: Html.tags..addAll(["attachment"]),
              customRender: {
                "attachment": (RenderContext context, Widget child) {
                  return TextButton.icon(
                    onPressed: () {
                      openUrl(context.tree.element!.attributes["href"]!);
                    },
                    icon: const Icon(Icons.description),
                    label: Text(
                      context.tree.element!.innerHtml,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              },
              data:
                  "<h2>${newsDetail[0].title}</h2><p>${newsDetail[0].date}</p>${newsDetail[0].body}<br />${newsDetail[0].attachment?.asMap().entries.map((entry) => '<attachment href="${entry.value}">添付ファイル${entry.key + 1}</attachment>').join() ?? ""}",
            ),
          ),
        ),
      ),
    );
  }
}
