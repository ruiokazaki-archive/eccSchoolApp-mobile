import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:ecc_school_app_mobile/routes/app_router.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart';
import 'package:flutter/material.dart';

const Color primary = Colors.white;
final Color active = Colors.grey.shade800;
final Color divider = Colors.grey.shade600;

ClipPath drawer(context) {
  return ClipPath(
    clipper: OvalRightBorderClipper(),
    child: Drawer(
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: const BoxDecoration(
          color: primary,
          boxShadow: [
            BoxShadow(color: Colors.black45),
          ],
        ),
        width: 300,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildDivider(),
                _buildRow(
                  icon: Icons.home,
                  title: "ホーム",
                  onTap: () {
                    AppRouter.popUntil(Routes.HomeRoute);
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.schedule,
                  title: "時間割",
                  onTap: () {
                    AppRouter.pushNamed(Routes.TimetableRoute);
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.percent,
                  title: "出席率",
                  onTap: () {
                    AppRouter.pushNamed(Routes.AttendanceRoute);
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.notifications,
                  title: "お知らせ",
                  onTap: () {
                    AppRouter.pushNamed(Routes.NewsRoute);
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.calendar_month,
                  title: "カレンダー",
                  onTap: () {
                    AppRouter.pushNamed(Routes.CalendarRoute);
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.star_border_rounded,
                  title: "アプリをレビューする",
                  onTap: () {
                    openUrl('https://forms.gle/tsXfXPJJWBsiC7aCA');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.report_gmailerrorred_rounded,
                  title: "バグ / 要望 / その他",
                  onTap: () {
                    openUrl(
                        'https://github.com/RuiOkazaki/eccSchoolApp-mobile/issues');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.school,
                  title: "公式学生アプリ",
                  onTap: () {
                    openUrl('https://comp-app.ecc-sv.com/app/index.php');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.health_and_safety_rounded,
                  title: "安否確認",
                  onTap: () {
                    openUrl('http://anpi.ecc.ac.jp/');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.menu_book_rounded,
                  title: "ハンドブック",
                  onTap: () {
                    openUrl(
                        'https://comp.ecc.ac.jp/about/pdf/handbook2022.pdf');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.code,
                  title: "GitHub - web",
                  onTap: () {
                    openUrl('https://github.com/RuiOkazaki/eccSchoolApp-web');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.code,
                  title: "GitHub - mobile",
                  onTap: () {
                    openUrl(
                        'https://github.com/RuiOkazaki/eccSchoolApp-mobile');
                  },
                ),
                _buildDivider(),
                _buildRow(
                  icon: Icons.code,
                  title: "GitHub - api",
                  onTap: () {
                    openUrl('https://github.com/yumekiti/eccSchoolApp-api');
                  },
                ),
                _buildDivider(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

Divider _buildDivider() {
  return Divider(
    color: divider,
  );
}

Widget _buildRow({
  required IconData icon,
  required String title,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                icon,
                color: active,
              ),
              const SizedBox(width: 10.0),
              Text(
                title,
                style: TextStyle(color: active, fontSize: 16.0),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    ),
  );
}
