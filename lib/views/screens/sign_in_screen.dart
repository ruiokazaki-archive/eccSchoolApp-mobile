import 'package:ecc_school_app_mobile/helpers/utils/open_url.dart';
import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:ecc_school_app_mobile/views/widgets/sign_in/wave_clipper1.dart';
import 'package:ecc_school_app_mobile/views/widgets/sign_in/wave_clipper2.dart';
import 'package:ecc_school_app_mobile/views/widgets/sign_in/wave_clipper3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ecc_school_app_mobile/routes/routes.dart' as routes;

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final userIdController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');

    final isUnVisible = useState(true);
    final isLoading = useState(false);

    final isFailure = useState(false);

    String? formValidator(String? value, String labelText) {
      if (value == null || value.isEmpty) {
        return "Please enter some $labelText";
      }
      return null;
    }

    Future<void> onSubmitHandler(Function onSuccess) async {
      isLoading.value = true;

      if (formKey.currentState!.validate()) {
        try {
          await ref.read(authNotifierProvider.notifier).signIn(
                userId: userIdController.text,
                password: passwordController.text,
              );
          userIdController.clear();
          passwordController.clear();
          isLoading.value = false;
          onSuccess();
        } catch (e) {
          isFailure.value = true;
        }
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipper2(),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(0.1),
                        Theme.of(context).primaryColor.withOpacity(0.2),
                      ],
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper3(),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(0.2),
                        Theme.of(context).primaryColor.withOpacity(0.4),
                      ],
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper1(),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColor,
                      ],
                    ),
                  ),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Icon(
                        Icons.logo_dev,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "app name?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: TextFormField(
                      controller: userIdController,
                      validator: (value) =>
                          formValidator(value, 'Student number'),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onFieldSubmitted: (_) => onSubmitHandler(
                        () => const routes.HomeRoute().go(context),
                      ),
                      decoration: InputDecoration(
                        labelText: 'Student number',
                        hintText: 'Your student number',
                        prefixIcon: Material(
                          elevation: 0,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          child: Icon(
                            Icons.person,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) => formValidator(value, 'Password'),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onFieldSubmitted: (_) => onSubmitHandler(
                          () => const routes.HomeRoute().go(context)),
                      obscureText: isUnVisible.value,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Your password',
                        prefixIcon: Material(
                          elevation: 0,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          child: Icon(
                            Icons.lock,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(isUnVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            isUnVisible.value = !isUnVisible.value;
                          },
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (isFailure.value)
                  const Text(
                    'Student number or Password is incorrect',
                    style: TextStyle(color: Colors.red),
                  ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: TextButton(
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () => onSubmitHandler(
                        () => const routes.HomeRoute().go(context),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    openUrl("https://falcon.ecc.ac.jp/eccmo/");
                  },
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
