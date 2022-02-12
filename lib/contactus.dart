import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:glorycity/signup.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:get/get.dart';

class ContactPage extends StatelessWidget {
//  const Membership({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Contact(),
    );
  }
}

class Contact extends StatefulWidget {
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();




  @override
  Widget build(BuildContext context) {

    final info = Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Column(
        children: [

          Center(
            child: Text(
              "Contact Us",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30
              ),

            ),
          ),

          SizedBox(height: 10,),

          Container(

            decoration: BoxDecoration(
              color: HexColor("#cf6161")
            ),
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Text(
                  "ABOUT US",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text("GloryCity Chapel International is a word based, prophetic, deliverance and healing ministry. We believe in impacting and inspiring people with the true word of God",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                ),),

              ],
            ),


          ),


          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: HexColor("#cf6161")
            ),
            child: Column(
              children: [
                Text(
                  "ADDRESS",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "134 Evergreen pl, Suite 902",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                Text(
                    "East Orange, NJ 07018",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),



          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                color: HexColor("#cf6161")
            ),
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Text(
                  "CONTACT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    "973-567-7746 / 646-934-3264",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                    "info@glorycitychapel.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )






        ],
      ),

    );

    final contactForm = Container(
      padding: const EdgeInsets.all(10.0),

      child: Column(
        children: [


        Center(

          child: Text(
              "Please fill below form to reach us",
            style: TextStyle(
              fontSize: 18
            ),
          ),
        ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name"
              ),
            ),
          ),



          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: messageController,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Message",
              ),
              maxLines: 8,
              maxLength: 1000,

            ),

          ),

          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  child: const Text("Submit",style: TextStyle(fontSize: 18),),
                  onPressed: (){
//
                  },

                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(400,100)
                  )

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
            info,
            SizedBox(height: 10,),
            contactForm,
          ],
        ),
      ),

    );






  }




}
