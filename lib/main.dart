import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glorycity/OnlineRadio.dart';
import 'package:glorycity/give.dart';
import 'package:glorycity/Login/LoginPage.dart';
import 'package:glorycity/membership/membership.dart';
import 'package:glorycity/recorded.dart';
import 'package:glorycity/social/application/social.dart';
import 'package:glorycity/social/media/media.dart';
import 'package:glorycity/website/webController.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';

import 'about.dart';
import 'contactus.dart';

void main() {
  initialize();
  runApp(MyApp());
}

void initialize(){
//  inject social controller
  Get.lazyPut(() => BaseController(Get.put(UserService())));
}

class MyApp extends GetWidget<BaseController> {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Injecting Contoller
  final _controller = Get.put(SocialController());
  final _webContoller = Get.put(WebController());

  late VideoPlayerController _player;
//   String _ulr = "https://www.youtube.com/channel/UCOMRXp2TviMT1wjHubRZW-Q";

  @override
  void initState() {
    super.initState();
    _player = VideoPlayerController.network(
        "https://www.youtube.com/watch?v=_4diEjBne4c")
      ..initialize().then((_) {
        setState(() {});
        _player.pause();
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
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/audio/worship.jpg"),
        )),
        child: Container(
          child: const Text(
            "Worship with us online",
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          margin: const EdgeInsets.only(top: 50),
        ));

    final tv = SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 250.0,
        child: Column(
          children: [
            SizedBox(
              height: 180.0,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: VideoPlayer(_player),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _player.value.isPlaying ? _player.pause() : _player.play();
                });
              },
              child: Icon(
                  _player.value.isPlaying ? Icons.pause : Icons.play_arrow),
            )
          ],
        ));

    final church = Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/audio/pastor.webp"),
      )),
    );

    final Services = Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: const [
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
          SizedBox(
            height: 3.0,
          ),
          Text(
            "8:30pm-01:00am",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Sunday 1st Service",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Text(
            "Diplomatic Service 10am-1:00pm",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Sunday 2nd Service",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
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
      height: 250,
      decoration: BoxDecoration(color: HexColor('#e6f0fb')),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Jesus loves you,\nStay close to To him,\n No Matter Where You Are",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              child: const Text(
                "GloryCity Chapel International is a Kingdom minded ministry. We believe in The Father,\n The Son and The HolySpirit",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
              padding: const EdgeInsets.only(top: 10.0),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
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



    final liveWatch = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
           watchFacebook();
          },
          child: const Text(
            "WATCH US LIVE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
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
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Opening Hours",
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
                    color: HexColor("#262626"),
                    height: 1.5,
                    fontFamily: "Roboto",
                  ),
                ),
                Text(
                  "Sunday 2nd Service: 1:15pm - 2:30pm",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: HexColor("#262626"),
                    height: 1.5,
                  ),
                ),
                Text(
                  "Friday: 8:30pm - 1:00am",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal,
                    color: HexColor("#262626"),
                    wordSpacing: 1.0,
                    height: 1.5,
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
                    MaterialPageRoute(builder: (context) => MyApp()));
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
                        builder: (context) =>  Membership()));
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
                visitWebsite();
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

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnlineRadio()));
              },
            ),

                ListTile(
                  title: const Text("TV station"),
                  onTap: (){
                    GoYoutube();
                  },
                ),


            // ListTile(
            //   title: const Text("TV Station"),
            //   onTap: () {},
            // ),
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
              tv,
              const SizedBox(
                height: 10,
              ),
              church,
              const SizedBox(
                height: 10,
              ),
              Services,
              const SizedBox(
                height: 10,
              ),
              love,
              const SizedBox(
                height: 10,
              ),
              liveWatch,
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

  void GoYoutube() {
    String url = "https://www.youtube.com/channel/UCOMRXp2TviMT1wjHubRZW-Q";
    // String url = "https://www.youtube.com";
    _controller.visitYoutube(url);
  }

  void visitWebsite() {
    String url = "https://www.glorycitychapel.com";
    _webContoller.visitWebsite(url);

  }

  void watchFacebook() {
    String url = "https://web.facebook.com/godblessadjei?_rdc=1&_rdr";
    _controller.visitFacebook(url);
  }



}
