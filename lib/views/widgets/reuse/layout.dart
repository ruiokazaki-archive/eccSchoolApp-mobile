import 'package:ecc_school_app_mobile/views/widgets/reuse/app_bar.dart';
import 'package:ecc_school_app_mobile/views/widgets/reuse/drawer.dart';
import 'package:flutter/material.dart';

Scaffold layout({
  String? pageTitle,
  required Widget body,
  required BuildContext context,
}) {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  openDrawer() {
    key.currentState!.openDrawer();
  }

  return Scaffold(
    key: key,
    appBar: appBar(title: pageTitle, openDrawer: openDrawer, context: context),
    drawer: drawer(context),
    body: body,
  );
}
