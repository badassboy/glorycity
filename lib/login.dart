import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glorycity/round_btn.dart';
import 'package:glorycity/signup.dart';
import 'package:glorycity/text_input_fields.dart';
import 'package:glorycity/constants/theme.dart';
import 'package:glorycity/constants/globals.dart' as globals;
import 'package:glorycity/components/sign_up_success.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({required Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: primaryColorC,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: 0.0,
              ),
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30, color: textColor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50, right: 5, top: 40),
                      child: Text(
                        'Email',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 13,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                    child: Column(
                      children: [
                        CustomTextInput(
                          3,
                          'Enter email here',
                          false,
                          Icons.person,
                          key: _formKey,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50, right: 5, top: 18),
                      child: Text(
                        'Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 13,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                    child: CustomTextInput(
                      4,
                      'Enter password here',
                      true,
                      Icons.vpn_key,
                      key: _formKey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CustomButton(1, 'Login',key: _formKey,),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '- OR -',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                  Text(
                    'Sign in with',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          minWidth: 10,
                          color: Colors.white,
                          onPressed: () {},
                          child: Image.asset(
                            'assets/icon/icon_facebook_48.png',
                            height: 30,
                            width: 30,
                          ),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          minWidth: 10,
                          color: Colors.white,
                          onPressed: () {},
                          child: Image.asset(
                            'assets/icon/icon_google_48.png',
                            height: 30,
                            width: 30,
                          ),
                          shape: CircleBorder(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?  ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            color: textColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 15,
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}