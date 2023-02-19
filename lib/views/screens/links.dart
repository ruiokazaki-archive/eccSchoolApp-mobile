import 'package:ecc_school_app_mobile/views/widgets/links/link_item.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/layout.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LinksScreen extends HookConsumerWidget {
  const LinksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return layout(
      selectedBottomNavigationIndex: -1,
      pageTitle: '各種リンク',
      context: context,
      body: ListView(
        children: [
          const Divider(
            height: .5,
            color: Colors.black26,
          ),
          linkItem(
            label: 'アプリをレビューする',
            link: 'https://forms.gle/tsXfXPJJWBsiC7aCA',
            icon: Icons.star_border_rounded,
          ),
          linkItem(
            label: 'バグ / 要望 / その他',
            link: 'https://github.com/RuiOkazaki/eccSchoolApp-mobile/issues',
            icon: Icons.report_gmailerrorred_rounded,
          ),
          linkItem(
            label: "公式学生アプリ",
            link: 'https://comp-app.ecc-sv.com/app/index.php',
            icon: Icons.school_rounded,
          ),
          linkItem(
            label: "安否確認",
            link: 'http://anpi.ecc.ac.jp/',
            icon: Icons.health_and_safety_rounded,
          ),
          linkItem(
            label: "ハンドブック",
            link: 'https://comp.ecc.ac.jp/about/pdf/handbook2022.pdf',
            icon: Icons.menu_book_rounded,
          ),
          linkItem(
            label: 'GitHub - web',
            link: 'https://github.com/RuiOkazaki/eccSchoolApp-web',
            icon: Icons.code_rounded,
          ),
          linkItem(
            label: 'GitHub - mobile',
            link: 'https://github.com/RuiOkazaki/eccSchoolApp-mobile',
            icon: Icons.code_rounded,
          ),
          linkItem(
            label: 'GitHub - api',
            link: 'https://github.com/yumekiti/eccSchoolApp-api',
            icon: Icons.code_rounded,
          ),
        ],
      ),
    );
  }
}
