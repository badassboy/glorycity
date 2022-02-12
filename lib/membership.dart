import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

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
      home: MemberRegister(),
    );
  }
}

class MemberRegister extends StatefulWidget {
  @override
  State<MemberRegister> createState() => _MemberRegisterState();
}

class _MemberRegisterState extends State<MemberRegister> {

  TextEditingController firstNameController = TextEditingController();
 TextEditingController lastNameController = TextEditingController();
 TextEditingController ageController = TextEditingController();
 TextEditingController emailController = TextEditingController();
 TextEditingController phoneController = TextEditingController();
 TextEditingController addressController = TextEditingController();
 TextEditingController cityController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    final membershipForm = Padding(
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
                fontSize: 30
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Membership Registration",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: firstNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First Name"
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: lastNameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Name"
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: ageController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Age"
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email"
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone"
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Address"
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: cityController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "City"
              ),
            ),
          ),

          Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text("Register"),
              onPressed: (){
//
              },
            )
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

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            membershipForm,
          ],
        ),
      ),




      );



  }




}
