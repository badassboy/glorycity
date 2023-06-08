import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/main.dart';
import 'package:glorycity/user.dart' as Users;
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore store = FirebaseFirestore.instance;
  UserProvider? userProvider;
  final GlobalKey<ScaffoldMessengerState> sms =
      GlobalKey<ScaffoldMessengerState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = true;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginForm = Padding(
      padding: const EdgeInsets.all(10.0),
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
              "Register Here",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            validator: emailValidator,
          ),
          // SizedBox(
          //   height: 10,
          // ),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          DefaultPrimaryButton(
            onPressed: !isLoading
                ? null
                : () async {
                    if (signUpFormKey.currentState?.validate() == true) {
                      setState(() {
                        isLoading = false;
                      });
                      await checkEmailBeforeRegister()
                          .whenComplete(() => setState(() {
                                isLoading = true;
                              }));
                    }
                  },
            child: Visibility(
              visible: isLoading,
              replacement: const CircularProgressIndicator(),
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      key: sms,
      appBar: AppBar(
        title: const Text("GloryCity"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Form(
          key: signUpFormKey,
          child: Column(
            children: [
              loginForm,
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  /**
   * Checks if an email is already in use before registration.
   *
   * The function fetches the sign-in methods for the provided email address using Firebase authentication.
   * If the list of sign-in methods is not empty, it indicates that the email is already in use.
   * In this case, it shows a snackbar message indicating that the email is already in use and returns true.
   * If the email is not in use, it creates a new user account with the provided email and password.
   * After successful registration, it saves the user data and shows a snackbar message indicating successful registration.
   * Finally, it redirects the user to the home page and returns false.
   * If any error occurs during the process, it shows a snackbar message with the error and returns true.
   *
   * @return true if the email is already in use, false if the registration is successful or an error occurs.
   */
  Future<bool> checkEmailBeforeRegister() async {
    try {
      // Fetch the sign-in methods for the email address
      final list = await auth.fetchSignInMethodsForEmail(emailController.text);

      // Confirm if there is already an account with the email
      if (list.isNotEmpty) {
        // Show a snackbar message indicating that the email is already in use
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue,
            content: Text("Email already in use")));

        // Return true to indicate that the email is already in use
        return true;
      } else {
        try {
          // Create a new user account with the provided email and password
          await auth
              .createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text)
              .whenComplete(() async {
            // Save the user data
            var user = Users.User(
                email: auth.currentUser?.email,
                registrationTime: DateTime.now().toString());
            await FirebaseServices().saveUser(user: user);

            // Check if the context is still mounted
            if (!context.mounted) {
              return;
            }

            // Show a snackbar message indicating successful registration
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.blue,
                content: Text(
                    "Successful Registration ${auth.currentUser?.email}")));

            // Redirect the user to the home page
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const MyHomePage();
            }));
          });

          // Return false to indicate successful registration
          return false;
        } on FirebaseAuthException catch (error) {
          if (error.code == 'weak-password') {
            // Show a snackbar message indicating weak password
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.blue,
                content: Text("Password is weak")));
          }

          // Return false to indicate unsuccessful registration due to an error
          return false;
        }
      }
    } catch (error) {
      // Show a snackbar message with the error
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.blue, content: Text("$error")));

      // Return true to indicate unsuccessful registration due to an error
      return true;
    }
  }

  /**
   * Validates the email format.
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
