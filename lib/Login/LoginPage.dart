import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glorycity/Register/signup.dart';
import 'package:glorycity/main.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = true;
  UserProvider? userProvider;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginForm = Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "GloryCity Chapel",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
            ),
            SizedBox(height: 20),
            Visibility(
              visible: isLoading,
              replacement: Center(child: CircularProgressIndicator()),
              child: DefaultPrimaryButton(
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: !isLoading
                    ? null
                    : () async {
                        setState(() {
                          isLoading = false;
                        });

                        await loginEmail().whenComplete(() => isLoading = true);
                      },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Does not have account?",
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: Visibility(
                      visible: isLoading,
                          replacement: const CircularProgressIndicator(),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("GloryCity"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            loginForm,
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> loginEmail() async {
    var login = await auth
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .whenComplete(() async {
      await userProvider?.getUser(email: auth.currentUser!.email!);
      if (!context.mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.blue,
          content: Text("Successful login ${auth.currentUser?.email}")));
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const MyHomePage();
      }));
    });
    // if (!login) {}
  }
}
