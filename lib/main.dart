import 'package:ecc_school_app_mobile/constants/theme.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ECC School App',
      theme: originalTheme,
      routerConfig: goRouter,
    );
  }
}
