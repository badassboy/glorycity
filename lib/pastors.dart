import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hexcolor/hexcolor.dart';

class Pastors extends StatefulWidget {
  // const Pastors({Key? key}) : super(key: key);
  @override
  State<Pastors> createState() => Pastor();

}

class Pastor extends State<Pastors> {
  // const Pastor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gallery = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 3200,
        child: Column(
          children: [

            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(

                    title: const Text(
                        'Johnny Duncan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      'Prophet',
                      style: TextStyle(
                          color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),


                  Image.asset('assets/audio/duncan.webp'),

                ],
              ),
            ),

            SizedBox(height: 10,),

            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(

                    title:  Text(
                        'Cyril Cyriaano',
                      style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,

                      ),
                    ),
                    subtitle: Text(
                      'Prophet',
                      style: TextStyle(
                          color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),


                  Image.asset('assets/audio/cyril.webp'),

                ],
              ),
            ),

            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title:  Text(
                        'Stephen Quartey',
                      style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      'Prophet',
                      style: TextStyle(
                          color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Image.asset('assets/audio/stephen.webp'),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title:  Text(
                      'Rosyln Ohene Sakyi',
                      style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      'Lady Reverend',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Image.asset('assets/audio/rosalyn.webp'),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title:  Text(
                      'Nana Pokuaa Cyriaano',
                      style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      'Lady Reverend',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Image.asset('assets/audio/pokuaa.webp'),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title:  Text(
                      'Frederica Nana Tsuba Ankrah',
                      style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      'Lady Reverend',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Image.asset('assets/audio/frederica.webp'),
                ],
              ),
            ),

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
