import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';



//void main() {
//  runApp(Give());
//}

class Give extends StatelessWidget {
//  const Give({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) {

    final letter = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Center(
        child: Card(
          child: ListTile(
            title: Text(
                "Give",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.normal
              ),
            ),
            subtitle: Text("3 ways to Support Our Church"),
          ),
        ),
      ),



    );


    final support = Container(
      width: MediaQuery.of(context).size.width,
      height: 550.0,
      child: Column(
        children: [


             Container(
              decoration: BoxDecoration(
                color: HexColor("#ccccff")
              ),
              height: 180,
              child: Column(
                children: [
                  Text(
                      "Seed Faith",
                    style: TextStyle(
                      fontSize: 19.0,
                      color: HexColor("#66ccff"),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                      "Let Your Faith Work",
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                    ),
                  ),

                  Text(
                      "Bring ye all the tithes into the storehouse, that there may be meat in mine house, and prove me now herewith, saith the LORD of hosts, if I will not open you the windows of heaven, and pour you out a blessing, that there shall not be room enough to receive it"
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Donate")
                  )
                ],
              ),
            ),



             Container(
              decoration: BoxDecoration(
                color: HexColor("#e8d1a5")
              ),
              height: 180,
              child: Column(
                children: [
                  Text(
                      "Offering",
                    style: TextStyle(
                      fontSize: 19.0,
                      color: HexColor("#66ccff"),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                      "Lets Support the kingdom",
                  ),

                  Text(
                      "Bring ye all the tithes into the storehouse, that there may be meat in mine house, and prove me now herewith, saith the LORD of hosts, if I will not open you the windows of heaven, and pour you out a blessing, that there shall not be room enough to receive it",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Donate")
                  )
                ],
              ),
            ),



             Container(
              decoration: BoxDecoration(
                color: HexColor("#e3a3a3"),
              ),
              height: 180,
              child: Column(
                children: [
                  Text(
                      "Church Project",
                    style: TextStyle(
                      fontSize: 19.0,
                      color: HexColor("#66ccff"),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text("Together we shall build"),

                  Text(
                      "Bring ye all the tithes into the storehouse, that there may be meat in mine house, and prove me now herewith, saith the LORD of hosts, if I will not open you the windows of heaven, and pour you out a blessing, that there shall not be room enough to receive it",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text("Donate")
                  )
                ],
              ),
            ),



        ],
      ),

    );

    final give = Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "“Give, and it shall be given unto you; good measure, pressed down, and shaken together, and running over, shall men give into your bosom”",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
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
              letter,
              SizedBox(height: 20,),
              support,
              SizedBox(height: 10,),
              give,
              SizedBox(height: 10,),
              footer,


            ],
          ),

        ),
      ),

    );


  }






}
