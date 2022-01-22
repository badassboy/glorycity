import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:video_player/video_player.dart';



void main() {
  runApp(AboutPage());
}

class AboutPage extends StatelessWidget {
//  const AboutPage({Key? key}) : super(key: key);

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


    final pictures = Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [

          Expanded(
              child:  Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    )
                ),
              ),
          ),

          Expanded(
            child:  Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  )
              ),
            ),
          ),




        ],
      ),
    );




    final statement = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
              child: Card(
                child: ListTile(
                  title: Text("Vision"),
                  subtitle: Text("Our Vision is to be Christ Centered Community to bring people to Jesus and membership in His family, develop them to Christlike maturity, and equip them for their ministry in the church and life mission in the world and build a great city for all people through a gospel movement that brings personal conversion, community formation, social justice and cultural renewal to the world in order to magnify God's name"),
                ),
              )
          ),

          Expanded(
              child: Card(
                child: ListTile(
                  title: Text("Mission"),
                  subtitle: Text("GloryCity Chapel International is prophetic, liberating and progressing christian community of faith that honors, values and welcomes all people. We preach relevant, vibrant and scripture-based message that inspires and impacts the people. We challenge each other to make our lives count, as we invite everyone to be transformed in mind, body and spirit. From a place of trust, wholeness and holiness, we reach out as the hands, feet and heart of Christ through acts of justice and compassion to make a difference in our world. Our Mission is to accept, embody and declare God's love for all"),
                ),
              )
          ),

        ],
      ),

    );







    final others = Container(
      width: MediaQuery.of(context).size.width,
      height: 120,

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
              child: Card(
                child: ListTile(
                  title: Text("Our Shepherd"),
                  subtitle: Text("Our Vision is to be Christ Centered Community to bring people to Jesus and membership in His family, develop them to Christlike maturity, and equip them for their ministry in the church and life mission in the world and build a great city for all people through a gospel movement that brings personal conversion, community formation, social justice and cultural renewal to the world in order to magnify God's name"),
                ),
              )
          ),

          Expanded(
              child: Card(
                child: ListTile(
                  title: Text("Our Pastors"),
                  subtitle: Text("Our Vision is to be Christ Centered Community to bring people to Jesus and membership in His family, develop them to Christlike maturity, and equip them for their ministry in the church and life mission in the world and build a great city for all people through a gospel movement that brings personal conversion, community formation, social justice and cultural renewal to the world in order to magnify God's name"),
                ),
              )
          ),

          Expanded(
              child: Card(
                child: ListTile(
                  title: Text("Our Department"),
                  subtitle: Text("Our Vision is to be Christ Centered Community to bring people to Jesus and membership in His family, develop them to Christlike maturity, and equip them for their ministry in the church and life mission in the world and build a great city for all people through a gospel movement that brings personal conversion, community formation, social justice and cultural renewal to the world in order to magnify God's name"),
                ),
              )
          ),

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
              jumbotron,
              SizedBox(height: 20,),
              pictures,
              SizedBox(height: 10,),
              statement,
              SizedBox(height: 10,),
              others,
              SizedBox(height: 10,),
              footer,


            ],
          ),

        ),
      ),

    );


  }





}
