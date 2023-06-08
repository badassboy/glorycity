import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/main.dart';
import 'package:glorycity/user.dart' as Users;
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:provider/provider.dart';

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

  Future<void> registerEmail() async {
    var create = await auth
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .whenComplete(() async {
      var user = Users.User(
          email: auth.currentUser?.email,
          registrationTime: DateTime.now().toString());
      await FirebaseServices().saveUser(user: user);
      if (!context.mounted) {
        return;
      }
      userProvider = context.read<UserProvider>();
      if (!context.mounted) {
        return;
      }
      //await userProvider?.getUser(email: auth.currentUser!.email!);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.blue,
          content: Text("Successful Registration ${auth.currentUser?.email}")));
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const MyHomePage();
      }));
    });
  }

  Future<bool> checkEmailBeforeRegister() async {
    try {
      // Fetch sign-in methods for the email address
      final list = await auth.fetchSignInMethodsForEmail(emailController.text);

      // Confirm if there is already a an account
      if (list.isNotEmpty) {
        // if (!context.mounted) {
        //   return;
        // }
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.blue,
            content: Text("Email already in use")));
        return true;
      } else {
        try {
          await auth
              .createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text)
              .whenComplete(() async {
            var user = Users.User(
                email: auth.currentUser?.email,
                registrationTime: DateTime.now().toString());
            await FirebaseServices().saveUser(user: user);

            if (!context.mounted) {
              return;
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.blue,
                content: Text(
                    "Successful Registration ${auth.currentUser?.email}")));
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const MyHomePage();
            }));
          });
          return false;
        } on FirebaseAuthException catch (error) {
          if (error.code == 'weak-password') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.blue,
                content: Text("Password is weak")));
          }
          return false;
        }
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.blue, content: Text("$error")));
      return true;
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
