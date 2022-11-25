import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SigninScreen extends HookConsumerWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final userIdController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');

    final isUnvisible = useState(true);
    final isLoading = useState(false);

    final isFailure = useState(false);

    String? formValidator(String? value, String labelText) {
      if (value == null || value.isEmpty) {
        return "Please enter some $labelText";
      }
      return null;
    }

    void onSubmitHandler() async {
      isLoading.value = true;

      if (formKey.currentState!.validate()) {
        try {
          await ref.read(authNotifierProvider.notifier).signin(
                userId: userIdController.text,
                password: passwordController.text,
              );
          userIdController.clear();
          passwordController.clear();
          isLoading.value = false;
          const routes.HomeRoute().go(context);
        } catch (e) {
          debugPrint(e.toString());
          isFailure.value = true;
        }
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: userIdController,
                    validator: (value) =>
                        formValidator(value, 'Student number'),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onFieldSubmitted: (_) => onSubmitHandler(),
                    decoration: const InputDecoration(
                      labelText: 'Student number',
                      hintText: 'Your student number',
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) => formValidator(value, 'Password'),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onFieldSubmitted: (_) => onSubmitHandler(),
                    obscureText: isUnvisible.value,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Your password',
                      suffixIcon: IconButton(
                        icon: Icon(isUnvisible.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          isUnvisible.value = !isUnvisible.value;
                        },
                      ),
                    ),
                  ),
                  if (isFailure.value)
                    const Text(
                      'Student number or Password is incorrect',
                      style: TextStyle(color: Colors.red),
                    ),
                  ElevatedButton(
                    onPressed: onSubmitHandler,
                    child: const Text("submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
