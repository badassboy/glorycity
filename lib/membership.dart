import 'package:flutter/material.dart';
import 'package:glorycity/recorded.dart';

import 'about.dart';
import 'contactus.dart';
import 'give.dart';
import 'login.dart';
import 'main.dart';

class Membership extends StatefulWidget {
  const Membership({Key? key}) : super(key: key);
  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final membershipForm = Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
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
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "First Name"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Last Name"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Age"),

                  ),

                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Email"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Phone"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: addressController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Address"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: cityController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "City"),
                  ),
                ),
                Container(
                  height: 50.0,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text("Register"),
                    onPressed: () {},
                  ),
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
            membershipForm,
          ],
        ),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  AboutPage()));
              },
            ),
            ListTile(
              title: const Text('Give'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Give()));
              },
            ),
            ListTile(
              title: const Text('Membership'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Membership()));
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
            ListTile(
              title: const Text('Visit Our Website'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Recorded Programs'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecordingPage()));
              },
            ),
            ListTile(
              title: const Text('Online Radio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
