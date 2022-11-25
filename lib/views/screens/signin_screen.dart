import 'package:ecc_school_app_mobile/providers/signin_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(signinProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Signin Screen')),
      body: Center(
        child: asyncValue.when(
          loading: () => const CircularProgressIndicator(),
          error: (e, _) => Text(e.toString()),
          data: (data) => Text(data.toString()),
        ),
      ),
    );
  }
}
