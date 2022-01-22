import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:glorycity/round_btn.dart';
import 'package:glorycity/text_input_fields.dart';


import 'constants/theme.dart';



void main() {
  runApp(Membership());
}

class Membership extends StatelessWidget {
//  const Membership({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    final membershipForm = Container(
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
  );


    final footer = Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text(
            "GloryCity Chapel International",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),

          ),
        ],
      ),
    );





    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("GloryCity"),

      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),

            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Give'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Worship'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Membership'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('More'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              membershipForm,
              footer
            ],
          )
        ),
      ),
    );


  }




}
