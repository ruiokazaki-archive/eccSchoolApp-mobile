import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              onPressed: () => const routes.SignInRoute().go(context),
              child: const Text('Go to the SignIn screen'),
            ),
          ],
        ),
      ),
    );
  }
}
