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
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
                _buildDivider(),
                _buildRow(
                    icon: Icons.home,
                    title: "Home",
                    onTap: () {
                      AppRouter.popUntil(Routes.HomeRoute);
                    }),
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
