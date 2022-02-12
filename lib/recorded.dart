import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:glorycity/signup.dart';
//import 'package:get/get.dart';

class RecordingPage extends StatelessWidget {
//  const Membership({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Recorded(),
    );
  }
}

class Recorded extends StatefulWidget {
  @override
  State<Recorded> createState() => _RecordedState();
}

class _RecordedState extends State<Recorded> {

  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  String audioasset = "assets/audio/bisa.mp3";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = new AudioPlayer();


  @override
  void initState() {
    Future.delayed(Duration.zero, () async {

      ByteData bytes = await rootBundle.load(audioasset); //load audio from assets
      audiobytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //convert ByteData to Uint8List

      player.onDurationChanged.listen((Duration d) { //get the duration of audio
        maxduration = d.inMilliseconds;
        setState(() {

        });
      });

      player.onAudioPositionChanged.listen((Duration  p){
        currentpos = p.inMilliseconds; //get the current position of playing audio

        //generating the duration label
        int shours = Duration(milliseconds:currentpos).inHours;
        int sminutes = Duration(milliseconds:currentpos).inMinutes;
        int sseconds = Duration(milliseconds:currentpos).inSeconds;

        int rhours = shours;
        int rminutes = sminutes - (shours * 60);
        int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);

        currentpostlabel = "$rhours:$rminutes:$rseconds";

        setState(() {
          //refresh the UI
        });
      });

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("GloryCity Radio"),

      ),

    body: Center(

            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/audio/radio.jpeg"),
                  fit: BoxFit.cover,
                )
              ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              child: Text(currentpostlabel, style: TextStyle(fontSize: 25),),
            ),


            Container(
                child: Slider(
                  value: double.parse(currentpos.toString()),
                  min: 0,
                  max: double.parse(maxduration.toString()),
                  divisions: maxduration,
                  label: currentpostlabel,
                  onChanged: (double value) async {
                    int seekval = value.round();
                    int result = await player.seek(Duration(milliseconds: seekval));
                    if(result == 1){ //seek successful
                      currentpos = seekval;
                    }else{
                      print("Seek unsuccessful.");
                    }
                  },
                )
            ),

        Container(
          child: Wrap(
            spacing: 10,
            children: [
              ElevatedButton.icon(
                  onPressed: () async {
                    int result = await player.playBytes(audiobytes);
                    if(result == 1){
                      setState(() {
                        isplaying = true;
                        audioplayed = true;
                      });
                    }else {
                      print("Error playing audio");
                    }
                  },
                  icon: Icon(isplaying?Icons.pause:Icons.play_arrow),
                  label:Text(isplaying?"Pause":"Play")
              ),

              ElevatedButton.icon(
                  onPressed: () async {
                    int result = await player.stop();
                    if(result == 1){ //stop success
                      setState(() {
                        isplaying = false;
                        audioplayed = false;
                        currentpos = 0;
                      });
                    }else{
                      print("Error on stop audio.");
                    }
                  },
                  icon: Icon(Icons.stop),
                  label:Text("Stop")
              ),
            ],
        ),
      ),









        ],
    ),
      ),

    ),





    );






  }




}
