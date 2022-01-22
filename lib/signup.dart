import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glorycity/round_btn.dart';
import 'package:glorycity/text_input_fields.dart';

import 'package:glorycity/constants/theme.dart';
import 'package:glorycity/constants/globals.dart' as globals;

class SignUpScreen extends StatelessWidget {
//   SignUpScreen({required Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
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
                  bottom: 10.0,
                ),
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 30, color: textColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 5, top: 35),
                        child: Text(
                          'Full Name',
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
                            1,
                            'Enter your name',
                            false,
                            Icons.person,
                            key: _formKey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 5, top: 15),
                        child: Text(
                          'Phone No',
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
                        2,
                        'Enter your Phone No',
                        false,
                        Icons.phone,
                        key: _formKey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 5, top: 15),
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
                            'Enter your Email',
                            false,
                            Icons.mail,
                            key: _formKey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 5, top: 15),
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
                      child: Column(
                        children: [
                          CustomTextInput(
                            4,
                            'Enter your password',
                            true,
                            Icons.vpn_key,
                            key: _formKey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 5, top: 15),
                        child: Text(
                          'Confirm Password',
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
                            5,
                            'Confirm password',
                            true,
                            Icons.vpn_key,
                            key: _formKey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: CustomButton(2, 'Sign Up',key: _formKey,),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account?  ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 13,
                              color: textColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: Text(
                              'Sign In',
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
      ),
    );
  }
}
