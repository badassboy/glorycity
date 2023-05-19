import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class Department extends StatefulWidget {
  // const Department({Key? key}) : super(key: key);
  @override
  State<Department> createState() => Organisation();

}

class Organisation extends State<Department> {
  // const Organisation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heading = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 350,
      child: Column(
        children: const [
          Center(
            child: Text(
              "Department",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "The Parts of Ministry in Glory City Chapel International play major roles in our activities as a Church. These areas of ministry have been cautiously and prayerfully set up to meet the spiritual, social, physical and emotional needs of the people within the Church and in the community.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Every believer has been called and chosen by God to perform specific roles in His house. However, we believe in coming together as one body of Christ to perform better. In doing this, we will not only serve efficiently in the local church but also be the best in every aspect of our lives. If you would like to join any of these parts of the ministry, please contact us and you’ll be directed to the Coordinator in Charge. The parts of Ministry are:",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          )

        ],
      ),
    );

    final department = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 1500.0,
      child: Column(
          children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child:Column(
            children: [
              Text(
                  "Intercessory Prayer Team",
                style: TextStyle(
                  color: HexColor("#000000"),
                  fontWeight: FontWeight.bold,
                  fontSize: 18

                ),
              ),
              SizedBox(height: 5,),
              Text("This group’s main role is to pray for the needs of the Church as a “body” pertaining to the impact of the church within the community and the peace of the land where God placed us as a church. This group currently meets at the church premises once every week",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child:Column(
                children: [
                  Text(
                    "Music Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("This is the part of ministry that leads the church into God’s presence through the ministration of songs. This group works closely with the vision of the church to make worship relevant to God first and foremost, and then to the church. Meetings are at 5pm this and every Saturday",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child:Column(
                children: [
                  Text(
                    "Counselling Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("We believe that even though we are a body, we still need some form of guidance as individuals in our day to day lives. Therefore, this group has been set up for the welfare of the church. This team is responsible for the receiving and following up on visitors and new members. They organize “Discipleship Classes” for new members in order to help them fully fit into the service of the Lord within and outside the church. The group meets regularly on specific days known to the team",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child:Column(
                children: [
                  Text(
                    "Drama Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Are you interested in acting? Do you like to take roles and act? Welcome to drama group whose role is to use the “skill” of drama to build, encourage and strengthen the Church as a body and even as individuals and to win souls for God. The group meets regularly on specific days known to the team",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child:Column(
                children: [
                  Text(
                    "Protocol Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("This group works closely with the Overseer, Head Pastor, Prophets and the Guest Ministers of the Church. The team is responsible, as designated by the Overseer, for the safe transportation and general hospitality of the Minister they are assigned to",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child:Column(
                children: [
                  Text(
                    "Dance Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("This group like the music group, is a unique worship team that aims at ministering to the Lord and His Church through dancing. This team uses imaginative posters and dance to “LIFT-UP” the standard of God & His Word, during corporate worship nights and other occasions. The group meets regularly on specific days known to the team",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child:Column(
                children: [
                  Text(
                    "Media Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("This group is responsible for the photography and video coverage of all the services and programmes in the church. The group is also responsible for the broadcast of these services and programmes organized at church on several social media platforms like Facebook, Instagram, etc. Another role of this group is to protect the image and profile of the church and ensuring that the vision of the church stays relevant to members of the church as well as the community. All forms of advertisements like weekly bulletins, monthly newsletters, website and posters of flyers for programmes are managed by this group. Regular meetings are organized on specific days known to this group",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child:Column(
                children: [
                  Text(
                    "Technical Team",
                    style: TextStyle(
                        color: HexColor("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("This team ensures that all the technical needs of the Church are met, maintained and updated. These technical needs include Audio, Visual and Computer Systems. The group meets regularly on specific days known to the team",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),





          ]),
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("GloryCity Chapel"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading,
              const SizedBox(
                height: 10,
              ),
              department,
              footer,
            ],
          ),
        ),
      ),
    );
  }
}
