import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:video_player/video_player.dart';



void main() {
  runApp(Worship());
}

class Worship extends StatelessWidget {
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

    final intro = Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text(
            "Worship",
            style:TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.normal
            ) ,
          ),

          Text(
            "​Not forsaking the assembling of ourselves together, as the manner of some is; but exhorting one another: and so much the more, as ye see the day approaching",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 17.0,
            ),
          )
        ],
      ),




    );

    final tv = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Column(
        children: [
          VideoPlayer(_player),
          FloatingActionButton(
              onPressed:(){
                setState(() {
//                  if the player is playing, pause it
                  if(_player.value.isPlaying){
                    _player.pause();
                  }else {
//                  if the video is paused, play it
                  _player.play();
                  }
                });
              }
          ),
          
          Icon(_player.value.isPlaying ? Icons.pause : Icons.play_arrow,),

          
        ],
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
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Give'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Worship'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Membership'),
              onTap: () {
                Navigator.pop(context);
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
              intro,
              SizedBox(height: 20,),
              tv,
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
