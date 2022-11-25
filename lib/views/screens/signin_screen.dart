import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User ID: ${auth.uuid}'),
            Text('Token: ${auth.token}'),
            ElevatedButton(
              onPressed: () {
                ref.read(authNotifierProvider.notifier).signin(
                      userId: '',
                      password: '',
                    );
              },
              child: const Text('Signin'),
            ),
          ],
        ),
      ),
    );
  }
}
