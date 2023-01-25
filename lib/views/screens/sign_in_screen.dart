import 'package:ecc_school_app_mobile/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

    Container _buildLoginForm() {
      return Container(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                height: 400,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 90.0,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                              hintText: "Email address",
                              hintStyle: TextStyle(color: Colors.blue.shade200),
                              border: InputBorder.none,
                              icon: const Icon(
                                Icons.email,
                                color: Colors.blue,
                              )),
                        )),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0),
                      child: Divider(
                        color: Colors.blue.shade400,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.blue.shade200),
                              border: InputBorder.none,
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.blue,
                              )),
                        )),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0),
                      child: Divider(
                        color: Colors.blue.shade400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.black45),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.blue.shade600,
                  child: const Icon(Icons.person),
                ),
              ],
            ),
            SizedBox(
              height: 420,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white70)),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget _buildPageContent(BuildContext context) {
      return Container(
        color: Colors.blue.shade200,
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            const CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.transparent,
              child: Text('data'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            _buildLoginForm(),
          ],
        ),
      );
    }

    return Scaffold(
      body: _buildPageContent(context),
    );
  }
}
