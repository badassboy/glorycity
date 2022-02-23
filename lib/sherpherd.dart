import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class Shepherd extends StatelessWidget {
  const Shepherd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GloryCity Chapel",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const OverSeer(),
    );
  }
}

class OverSeer extends StatelessWidget {
  const OverSeer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final jumbotron = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Card(
        child: ListTile(
          title: Text(
            "DR.EBENEZER GOBLESS ADJEI",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: HexColor("#ffffff"),
            ),
          ),
          subtitle: Text(
            "General OverSeer,GCCI",
            style: TextStyle(
                color: HexColor("#ffffff"),
                fontWeight: FontWeight.normal,
                fontSize: 15),
          ),
        ),
      ),
    );

    final statement = Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: BoxDecoration(
        color: HexColor("#ffffff"),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/audio/overseer.webp"),
              fit: BoxFit.fill,
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Column(
              children: [
                Text(
                  "APOSTLE DR. EBENEZER GODBLESS ADJEI IS THE FOUNDER AND GENERAL OVERSEER OF GLORYCITY CHAPEL INTERNATIONAL (THE CHURCH) with branches in New Jersey, South Africa, multiple in Ghana and still counting to its branches.",
                  style: TextStyle(
                    color: HexColor("#0d0d0d"),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Prophet Dr. Ebenezer Godbless Adjei is a native of Ghana and married to a beautiful woman Rev. Naomi Godbless Adjei and blessed with 3  children. He had his first degree from Kwame Nkrumah university of science and Technology in Kumasi – Ghana. As a growing young minister who was so much passionate about lost souls, he founded The Young Missionaries. It was a ministry that reaches out to institutions and in partnership with Churches travel to villages with soul winning ambition. He handed over this non denomination ministry to his right hand when the Lord instructed him to do so.",
                  style: TextStyle(color: HexColor("#0d0d0d"), fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Prophet Dr. Godbless, holds BA degree in Economics, Doctorate in Divinity and Bible studies. He is a Prophet and Teacher by calling and ministers the word of God and declares the mind of God with great passion and compassion yet without fear or favor. He is motivated by love and is very accessible to all who need His services for the cause of Christ and Humanity. In Character, Ebenezer Godbless Adjei is a godly man who fears the Lord and walks in His statues and principles. He doesn’t play with his integrity, loyalty to THE CHURCH and considers all opinions in his activities. He believes in being a team player like Jesus and uses the managing system rather than the boss system of leadership",
                  style: TextStyle(
                    color: HexColor("#0d0d0d"),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "He is a vessel in the hand of God being used to impact this generation. He is the author of LIFE BY THE PILLAR OF GIVING, LETS DISCUSS SEX, UNDERSTANDING THE PROPHETIC and several others. He also believes the world belongs to us because God gave us dominion over it. With his background as a business student, he believes in doing things for yourself rather than depending on others. He is the Chief Executive Officer of ELYON FARMS, AFIANS ESTATE, GODBLESS HOSTEL among the others",
                  style: TextStyle(
                    color: HexColor("#0d0d0d"),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "He has an ambition of seeing the rise of a new generation who will not only walk away from sin but also enjoy the great things the Lord has blessed as here on earth",
                  style: TextStyle(
                    color: HexColor("#0d0d0d"),
                    fontSize: 16,
                  ),
                )
              ],
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
                  "Sunday 2nd Service: 1:15pm - 2:30pm",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")),
                ),
                Text(
                  "Friday: 8:30pm - 1:00am",
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
              footer,
            ],
          ),
        ),
      ),
    );
  }
}
