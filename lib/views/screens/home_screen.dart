import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => const routes.SettingsRoute().go(context),
              child: const Text('Go to the Settings screen'),
            ),
            ElevatedButton(
              onPressed: () => const routes.DetailRoute().go(context),
              child: const Text('Go to the Details screen'),
            ),
          ],
        ),
      ),
    );
  }
}
