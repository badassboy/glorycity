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
          ),
          // SizedBox(
          //   height: 10,
          // ),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          DefaultPrimaryButton(
            onPressed: !isLoading
                ? null
                : () async {
                    setState(() {
                      isLoading = false;
                    });
                    await registerEmail(user: userProvider?.appUser)
                        .whenComplete(() => isLoading = true);
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
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> registerEmail({required Users.User? user}) async {
    await auth
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

      // var user = <String, dynamic>{
      //   "id": auth.currentUser?.uid,
      //   "email": auth.currentUser?.email,
      //   "registrationTime":
      //       DateFormat.yMMMMd().format(DateTime.now()).toString()
      // };

      // await store
      //     .collection("churchManagement")
      //     .doc(auth.currentUser?.uid)
      //     .set(user);
      if (!context.mounted) {
        return;
      }
      //await userProvider?.getUser(email: auth.currentUser!.email!);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.blue,
          content: Text("Successful Registration ${auth.currentUser?.email}")));
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return MyHomePage();
      }));
    });
  }
}
