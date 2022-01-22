import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:glorycity/give.dart';
import 'package:glorycity/membership.dart';
import 'package:glorycity/worship.dart';
import 'package:video_player/video_player.dart';

import 'about.dart';



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

  late VideoPlayerController _player ;
//  const String _ulr = "https://www.youtube.com/channel/UCOMRXp2TviMT1wjHubRZW-Q";



  @override
  void initState() {
    super.initState();
    _player =  VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {

    final jumbotron = Container(
    width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),

        )
      ),

      child: Text(
        "Watch Church Service Online",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),

    );

    final tv = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: VideoPlayer(_player),



    );

    final church = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
          )
      ),

      child: Text(
        "Welcome to CHURCH",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),

    );

    final Services = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                    "Every Friday",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Text(
                  "8:30pm-01:00am",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),

              ],
            )
          ),
          Expanded(
              child: Column(
                children: [
                  Text(
                    "Sunday 1st Service",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  Text(
                    "Diplomatic Service 10am-1:00pm",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),

                ],
              )
          ),

          Expanded(


              child: Column(
                children: [
                  Text(
                    "Sunday 2nd Service",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  Text(
                    "Teaching Service 1:15pm - 2:30pm",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              )

          ),

        ],
      ),
    );

    final love = Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.lightBlue
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
                fontSize: 15.0,

              ),
              textAlign: TextAlign.center,



            ),
          ),


            Center(

              child: Container(

                child:Text(
        "GloryCity Chapel International is a Kingdom minded ministry. We believe in The Father,\n The Son and The HolySpirit",

                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
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


    final firstGallery = Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Flexible(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  fit: BoxFit.fill,
                ),
              ),



              child: Column(
                children: [
                  Text(
                    "Watch Us Live",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),

                  Text(
                    "hello world",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),

                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Watch Now")
                  )
                ],
              ),
            ),
          ),

          Flexible(
            child: Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),

                ),
              ),
              width: 200,
              height: 200,



              child: Column(
                children: [
                  Text(
                    "PrayerLine",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),

                  Text(
                    "hello world",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),

                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Watch Now")
                  )
                ],
              ),
            ) ,
          ),




        ],
      ),
    );




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
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

    );

    final counselling = Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Column(
            children: [
              Text(
                "1-on-1 Counselling with the Prophet",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),


    );

    final footer = Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text(
            "GloryCity Chapel International",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
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
                MaterialPageRoute(builder: (context) => MyApp());
              },
            ),

            ListTile(
              title: const Text('About'),
              onTap: () {
                MaterialPageRoute(builder: (context) => AboutPage());
              },
            ),

            ListTile(
              title: const Text('Give'),
              onTap: () {
                MaterialPageRoute(builder: (context) => Give());
              },
            ),

            ListTile(
              title: const Text('Worship'),
              onTap: () {
                MaterialPageRoute(builder: (context) => Worship());
              },
            ),

            ListTile(
              title: const Text('Membership'),
              onTap: () {
                MaterialPageRoute(builder: (context) => Membership());
              },
            ),

            ListTile(
              title: const Text('More'),
              onTap: () {
                Navigator.pop(context);
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
              firstGallery,
              SizedBox(height: 10,),
              liveWatch,
              SizedBox(height: 10,),
              counselling,
              SizedBox(height: 10,),
              footer,


            ],
          ),

        ),
      ),

      );


  }

  @override
  void dispose() {
    super.dispose();
    _player.dispose();
  }

//  void _launchURL() async{
//    if (!await launch(_url)) throw 'Could not launch $_url';
//  }
//
//  launch(String youtube_url) {}


}
