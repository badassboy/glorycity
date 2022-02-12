import 'package:flutter/material.dart';
import 'package:glorycity/main.dart';
import 'package:glorycity/recorded.dart';
import 'package:hexcolor/hexcolor.dart';

import 'contactus.dart';
import 'give.dart';
import 'login.dart';
import 'membership.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  // late VideoPlayerController _player;
//  const String _ulr = "https://www.youtube.com/channel/UCOMRXp2TviMT1wjHubRZW-Q";

  @override
  Widget build(BuildContext context) {
    final jumbotron = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      )),
      child: const Text(
        "Watch Church Service Online",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final statement = Container(
      width: MediaQuery.of(context).size.width,
      height: 450.0,
      decoration: BoxDecoration(color: HexColor("#ffffff")),
      child: Column(
        children: [
          Column(
            children: [
              const Text(
                "Our Vision",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
              Text(
                "Our Vision is to be Christ Centered Community to bring people to Jesus and membership in His family, develop them to Christlike maturity, and equip them for their ministry in the church and life mission in the world and build a great city for all people through a gospel movement that brings personal conversion, community formation, social justice and cultural renewal to the world in order to magnify God's name",
                style: TextStyle(
                  color: HexColor("#404040"),
                  fontSize: 17.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              const Text(
                "Our Mission",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
              Text(
                "Our Vision is to be Christ Centered Community to bring people to Jesus and membership in His family, develop them to Christlike maturity, and equip them for their ministry in the church and life mission in the world and build a great city for all people through a gospel movement that brings personal conversion, community formation, social justice and cultural renewal to the world in order to magnify God's name",
                style: TextStyle(
                  color: HexColor("#404040"),
                  fontSize: 17.0,
                ),
              )
            ],
          ),
        ],
      ),
    );

    final others = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5.0,
            child: Container(
              width: 500,
              height: 120,
              decoration: BoxDecoration(color: HexColor("#ccccff")),
              child: Column(
                children: const [
                  Text(
                    "Our Shepherd",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0),
                  ),
                  Text(
                    "Apostle, Dr. Ebenezer Godbless Adjei leads by example. He is always part of the team and focuses on impacting the life of people he meets",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5.0,
            child: Container(
              width: 500.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: HexColor("#ccccff"),
              ),
              child: Column(
                children: const [
                  Text(
                    "Our Pastors",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0),
                  ),
                  Text(
                    "Despite the long hours and emotional intensity of our pastors, they find deep personal fulfilment in following a call to serve others in The Church",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5.0,
            child: Container(
              width: 500.0,
              height: 120,
              decoration: BoxDecoration(color: HexColor("#ccccff")),
              child: Column(
                children: const [
                  Text(
                    "Our Department",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0),
                  ),
                  Text(
                    "Despite the long hours and emotional intensity of our pastors, they find deep personal fulfilment in following a call to serve others in The Church",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

    final footer = Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: HexColor('#e6f0fb')),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 7.0),
            child: const Center(
              child: Text(
                "GloryCity Chapel International",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            margin: const EdgeInsets.only(top: 4.0),
            child: Column(
              children: [
                Text(
                  "973-567-7746",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "info@glorycitychapel.com",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "134 Evergreen pl, Suite 902",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "East Orange, NJ 07018",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Opening Hours:",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "Sunday 1st Service: 10am - 1pm",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "​​Sunday 2nd Service: 1:15pm - 2:30pm",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "​Friday: 8:30pm - 1:00am",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("GloryCity"),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecordingPage()));
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              jumbotron,
              const SizedBox(
                height: 20,
              ),
              statement,
              const SizedBox(
                height: 10,
              ),
              others,
              const SizedBox(
                height: 10,
              ),
              footer,
            ],
          ),
        ),
      ),
    );
  }
}
