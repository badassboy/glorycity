import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glorycity/departments.dart';
import 'package:glorycity/pastors.dart';
import 'package:glorycity/sherpherd.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     home: About(),
     theme: ThemeData(
       primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
   );
  }


}

class About extends StatelessWidget {
  // const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final jumbotron = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/audio/about.webp"),
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
      height: 550.0,
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
      height: 570,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5.0,
            child: Container(
              width: 400,
              height: 180,
              decoration: BoxDecoration(color: HexColor("#ccccff")),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Our Shepherd",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Apostle, Dr. Ebenezer Godbless Adjei leads by example. He is always part of the team and focuses on impacting the life of people he meets",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Read More",
                    ),
                    onPressed: () {
                      Get.to(Shepherd());
                    },
                  ),
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
              height: 180.0,
              decoration: BoxDecoration(
                color: HexColor("#ccccff"),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Our Pastors",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  const Text(
                    "Despite the long hours and emotional intensity of our pastors, they find deep personal fulfilment in following a call to serve others in The Church",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() =>  Pastors());
                    },
                    child: const Text("Read More"),
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
              height: 180,
              decoration: BoxDecoration(color: HexColor("#ccccff")),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Our Department",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Despite the long hours and emotional intensity of our pastors, they find deep personal fulfilment in following a call to serve others in The Church",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(Department());
                    },
                    child: const Text("Read More"),
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
        title: const Text("GloryCity Chapel"),
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
