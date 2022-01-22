import 'package:flutter/material.dart';
import 'package:glorycity/about.dart';
import 'package:glorycity/constants/theme.dart';
import 'package:glorycity/constants/theme.dart';
//import 'package:login_ui/screens/main_screen.dart';
import 'package:glorycity/constants/globals.dart' as globals;
import 'package:glorycity/components/sign_up_success.dart';

class CustomButton extends StatelessWidget {
  final int _iD;
  final String _btnText;

  // final String _inputUsername;
  // final String _inputPassword;
   CustomButton(this._iD, this._btnText, {required Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45),
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        color: Colors.white,
        child: Text(
          _btnText,
          style: TextStyle(fontSize: 16, color: accentColorC),
        ),
        onPressed: () {
          if (_iD == 1)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyApp();
//                  return MainScreen(globals.inputEmail, globals.inputPassword);
                },
              ),
            );
          else
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, _, __) =>
                    AlertSignIn(
                      'Successful',
                      'Sign Up was successful',
                      'Ok',
                      key: _formKey,
                    ),
                opaque: false,
              ),
            );
        },
      ),
    );
  }
}