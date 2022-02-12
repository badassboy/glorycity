import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:glorycity/give.dart';
import 'package:glorycity/login.dart';
import 'package:glorycity/membership.dart';
import 'package:glorycity/recorded.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';

import 'about.dart';
import 'contactus.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

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

   late VideoPlayerController _player;
//   String _ulr = "https://www.youtube.com/channel/UCOMRXp2TviMT1wjHubRZW-Q";



  @override
  void initState() {
    super.initState();
    _player =  VideoPlayerController.asset("assets/audio/failure.mp4")
      ..initialize().then((_) {
        setState(() {});
        _player.play();
      });

  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final jumbotron = Container(
    width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/audio/worship.jpg"),

        )
      ),

      child: Container(
        child: Text(
          "Worship with us online",
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center,

        ),
        margin: EdgeInsets.only(top: 50),
      )

    );

    final tv = Container(
      width: MediaQuery.of(context).size.width,
      height: 250.0,
      child: Column(
        children: [
        Container(
          height: 180.0,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: VideoPlayer(_player),
          ),
        ),


          FloatingActionButton(
              onPressed: (){
                setState(() {
                  _player.value.isPlaying
                      ? _player.pause()
                      : _player.play();
                });
              },

            child: Icon(
                _player.value.isPlaying ? Icons.pause : Icons.play_arrow
            ),


          )
        ],
      )

    );



    final church = Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/audio/pastor.webp"),
          )
      ),



    );

    final Services = Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
      ),

      child:Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Center(
            child: Text(
              "Upcoming Services",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 20.0,

              ),
            ),
          ),


                Text(
                    "Every Friday",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 3.0,),

                Text(
                  "8:30pm-01:00am",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),

                  SizedBox(height: 10.0,),






                  Text(
                    "Sunday 1st Service",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 3.0,),

                  Text(
                    "Diplomatic Service 10am-1:00pm",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 10.0,),








                  Text(
                    "Sunday 2nd Service",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 3.0,),

                  Text(
                    "Teaching Service 1:15pm - 2:30pm",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),





        ],
      ),
    );

    final love = Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      decoration: BoxDecoration(
        color: HexColor('#e6f0fb')
      ),
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [

          Center(

            child:Text(
              "Jesus loves you,\nStay close to To him,\n No Matter Where You Are",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,

              ),
              textAlign: TextAlign.center,



            ),
          ),


            Center(

              child: Container(

                child:Text(
        "GloryCity Chapel International is a Kingdom minded ministry. We believe in The Father,\n The Son and The HolySpirit",

                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
                  textAlign: TextAlign.center,


                ),

                padding: EdgeInsets.only(top: 10.0),


              ),

            ),



          Container(
            padding: EdgeInsets.only(top: 15.0),
            child: ElevatedButton(
              onPressed: (){

              },
              child: Text(
                "More About Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue,
                ),
              ),

            ),
          ),





        ],
      ),
    );


//    final firstGallery = Container(
//      height: 250,
//      width: MediaQuery.of(context).size.width,
//      child: Row(
////        mainAxisAlignment: MainAxisAlignment.end,
//        children: [
//
//          Flexible(
//            child: Container(
//              width: 200,
//              height: 200,
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//                  fit: BoxFit.fill,
//                ),
//              ),
//
//
//
//              child: Column(
//                children: [
//                  Text(
//                    "Watch Us Live",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 20.0,
//                    ),
//                  ),
//
//                  Text(
//                    "hello world",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 15.0,
//                    ),
//                  ),
//
//                  ElevatedButton(
//                      onPressed: (){},
//                      child: Text("Watch Now")
//                  )
//                ],
//              ),
//            ),
//          ),
//
//          Flexible(
//            child: Container(
//
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  fit: BoxFit.fill,
//                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//
//                ),
//              ),
//              width: 200,
//              height: 200,
//
//
//
//              child: Column(
//                children: [
//                  Text(
//                    "PrayerLine",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 20.0,
//                    ),
//                  ),
//
//                  Text(
//                    "hello world",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 15.0,
//                    ),
//                  ),
//
//                  ElevatedButton(
//                      onPressed: (){},
//                      child: Text("Watch Now")
//                  )
//                ],
//              ),
//            ) ,
//          ),
//
//
//
//
//        ],
//      ),
//    );




    final liveWatch = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Center(
        child: ElevatedButton(
          onPressed: (){
//            _launchURL;
          },
          child: Text(
            "WATCH US LIVE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ),
      ),

    );



    final footer = Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: HexColor('#e6f0fb')
      ),

      child: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 7.0),
            child: Center(
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



          SizedBox(height: 5.0,),

          Container(
            margin: EdgeInsets.only(top: 4.0),
           child: Column(
             children: [
               Text(
                   "973-567-7746",
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.normal,
                   color: HexColor("#262626")
                 ),
               ),
               Text(
                   "info@glorycitychapel.com",
                 style: TextStyle(
                     fontSize: 16.0,
                     fontWeight: FontWeight.normal,
                     color: HexColor("#262626")
                 ),

               ),
               Text(
                   "134 Evergreen pl, Suite 902",
                 style: TextStyle(
                     fontSize: 16.0,
                     fontWeight: FontWeight.normal,
                     color: HexColor("#262626")
                 ),
               ),
               Text(
                   "East Orange, NJ 07018",
                 style: TextStyle(
                     fontSize: 16.0,
                     fontWeight: FontWeight.normal,
                     color: HexColor("#262626")
                 ),
               ),
              
             ],
           ),

          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                    "Opening Hours:",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")
                  ),
                ),
                Text(
                    "Sunday 1st Service: 10am - 1pm",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")
                  ),
                ),
                Text(
                    "​​Sunday 2nd Service: 1:15pm - 2:30pm",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")
                  ),
                ),
                Text(
                    "​Friday: 8:30pm - 1:00am",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.normal,
                      color: HexColor("#262626")
                  ),
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
               Navigator.push(context,  MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),

            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),

            ListTile(
              title: const Text('Give'),
              onTap: () {
               Navigator.push(context,  MaterialPageRoute(builder: (context) => Give()));
              },
            ),



            ListTile(
              title: const Text('Membership'),
              onTap: () {
               Navigator.push(context,  MaterialPageRoute(builder: (context) => Membership()));
              },
            ),

            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.push(context,  MaterialPageRoute(builder: (context) => LoginPage()));
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
                Navigator.push(context,  MaterialPageRoute(builder: (context) => RecordingPage()));
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
                Navigator.push(context,  MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),


          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              jumbotron,
              SizedBox(height: 20,),
              tv,
              SizedBox(height: 10,),
              church,
              SizedBox(height: 10,),
              Services,
              SizedBox(height: 10,),
              love,
              SizedBox(height: 10,),

              liveWatch,


              SizedBox(height: 10,),
              footer,


            ],
          ),

        ),
      ),

      );


  }



//  void _launchURL() async{
//    if (!await launch(_url)) throw 'Could not launch $_url';
//  }
//
//  launch(String youtube_url) {}


}
