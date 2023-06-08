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

  /// Logs in the user using email and password.
  ///
  /// The function attempts to sign in with the provided email and password using Firebase authentication.
  /// If the login is successful, the user is redirected to the home page.
  /// If the login fails, appropriate error messages are shown.
  Future<void> loginEmail() async {
    try {
      // Attempt to sign in with email and password
      final login = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      if (true) {
        // Check if the context is still mounted
        if (!context.mounted) {
          return;
        }

        // Show a success message with the logged-in user's email
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.blue,
            content: Text("Successful login ${auth.currentUser?.email}")));

        // Redirect the user to the home page
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return const MyHomePage();
        }));
      }

      // Print a message indicating failed login
      return print("Failed");

      // TODO: Uncomment the following line to fetch user data
      // await userProvider?.getUser(email: auth.currentUser!.email!);
    } on FirebaseAuthException catch (error) {
      // Handle specific Firebase authentication exceptions

      if (error.code == 'user-not-found') {
        // Check if the context is still mounted
        if (!context.mounted) {
          return;
        }

        // Set the loading state to true
        setState(() {
          isLoading = true;
        });

        // Show a snackbar with a user not found message
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue, content: Text("User not found")));
      } else if (error.code == 'wrong-password') {
        // Check if the context is still mounted
        if (!context.mounted) {
          return;
        }

        // Set the loading state to true
        setState(() {
          isLoading = true;
        });

        // Show a snackbar with a wrong password message
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue, content: Text("Wrong password")));
      }
    }
  }

  /**
    Validates the email format.
   *
   * The function checks if the provided email is in a valid format.
   * It uses a regular expression pattern to match the email format.
   * If the email format is invalid, it returns an error message.
   * Otherwise, it returns null indicating a valid email format.
   *
   * @param value The email string to validate.
   * @return An error message if the email format is invalid, otherwise null.
   */
  String? emailValidator(String? value) {
    // Define a regular expression pattern for email format
    final pattern =
    RegExp("^([a-zA-Z0-9_/-/./]+)@([a-zA-Z0-9_/-/.]+)[.]([a-zA-Z]{2,5})");

    // Check if the provided value matches the email format pattern
    if (pattern.stringMatch(value ?? "") != value) {
      // Return an error message indicating invalid email format
      return "Invalid email format";
    }

    // Return null to indicate a valid email format
    return null;
  }

}
