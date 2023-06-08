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
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginForm = Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: loginFormKey,
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
              controller: emailController,
              hintText: "Enter email here",
              validator: emailValidator,
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Enter password here",
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: isLoading,
              replacement: const Center(child: CircularProgressIndicator()),
              child: DefaultPrimaryButton(
                onPressed: !isLoading
                    ? null
                    : () async {
                        if (loginFormKey.currentState?.validate() == true) {
                          setState(() {
                            isLoading = false;
                          });

                          await loginEmail();
                        }
                      },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ),
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
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
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
    try {
      final login = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      if (true) {
        if (!context.mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.blue,
            content: Text("Successful login ${auth.currentUser?.email}")));
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return const MyHomePage();
        }));
      }
      return print("Failed");
      // await userProvider?.getUser(email: auth.currentUser!.email!);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        if (!context.mounted) {
          return;
        }
        setState(() {
          isLoading = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue, content: Text("User not found")));
      } else if (error.code == 'wrong-password') {
        //print('Wrong password provided for that user.');
        if (!context.mounted) {
          return;
        }
        setState(() {
          isLoading = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue, content: Text("Wrong password")));
      }
    }
  }

  String? emailValidator(String? value) {
    final pattern =
        RegExp("^([a-zA-Z0-9_/-/./]+)@([a-zA-Z0-9_/-/.]+)[.]([a-zA-Z]{2,5})");
    if (pattern.stringMatch(value ?? "") != value) {
      return "Invalid email format";
    }
    return null;
  }
}
