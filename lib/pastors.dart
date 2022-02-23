import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class Pastors extends StatelessWidget {
  const Pastors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GloryCity Chapel",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Pastor(),
    );
  }
}

class Pastor extends StatelessWidget {
  const Pastor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gallery = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Flutter Card Example"),
                    subtitle: Text("testing"),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/audio/overseer.webp"),
                      fit: BoxFit.fill,
                    )),
                  )
                ],
              ),
            )
          ],
        ));

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
              gallery,
              const SizedBox(
                height: 20,
              ),
              footer,
            ],
          ),
        ),
      ),
    );
  }
}
