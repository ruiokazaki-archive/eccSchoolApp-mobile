import 'package:ecc_school_app_mobile/views/widgets/reuse/app_bar.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/bottom_navigation.dart';
import 'package:flutter/material.dart';

Scaffold layout({
  String? pageTitle,
  bool hideBottomNavigationBar = false,
  int selectedBottomNavigationIndex = 0,
  required Widget body,
  required BuildContext context,
}) {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  return Scaffold(
    key: key,
    appBar: appBar(title: pageTitle, context: context),
    body: body,
    bottomNavigationBar: hideBottomNavigationBar
        ? null
        : bottomNavigation(
            context,
            selectedIndex: selectedBottomNavigationIndex,
          ),
  );
}
