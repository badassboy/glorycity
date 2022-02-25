import 'package:flutter/material.dart';
import 'package:glorycity/recorded.dart';
import 'package:hexcolor/hexcolor.dart';

import 'about.dart';
import 'contactus.dart';
import 'login.dart';
import 'main.dart';
import 'membership.dart';

class Give extends StatefulWidget {
  const Give({Key? key}) : super(key: key);

  @override
  State<Give> createState() => _GiveState();
}

class _GiveState extends State<Give> {
  // late VideoPlayerController _player;
//  const String _ulr = "https://www.youtube.com/channel/UCOMRXp2TviMT1wjHubRZW-Q";

  @override
  Widget build(BuildContext context) {
    final letter = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: const Center(
        child: Card(
          child: ListTile(
            title: Text(
              "Give",
              style:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.normal),
            ),
            subtitle: Text("3 ways to Support Our Church"),
          ),
        ),
      ),
    );

    final support = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 700.0,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: HexColor("#ccccff")),
            height: 230,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Seed Faith",
                  style: TextStyle(
                    fontSize: 19.0,
                    color: HexColor("#0066cc"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Let Your Faith Work",
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "Bring ye all the tithes into the storehouse, that there may be meat in mine house, and prove me now herewith, saith the LORD of hosts, if I will not open you the windows of heaven, and pour you out a blessing, that there shall not be room enough to receive it"),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Donate With PayPal"))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: HexColor("#e8d1a5")),
            height: 230,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Offering",
                  style: TextStyle(
                    fontSize: 19.0,
                    color: HexColor("#0066cc"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Lets Support the kingdom",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Bring ye all the tithes into the storehouse, that there may be meat in mine house, and prove me now herewith, saith the LORD of hosts, if I will not open you the windows of heaven, and pour you out a blessing, that there shall not be room enough to receive it",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Donate With PayPal"))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: HexColor("#e3a3a3"),
            ),
            height: 230,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Church Project",
                  style: TextStyle(
                    fontSize: 19.0,
                    color: HexColor("#0066cc"),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Together we shall build"),
                const Text(
                  "Bring ye all the tithes into the storehouse, that there may be meat in mine house, and prove me now herewith, saith the LORD of hosts, if I will not open you the windows of heaven, and pour you out a blessing, that there shall not be room enough to receive it",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Donate With Paypal"))
              ],
            ),
          ),
        ],
      ),
    );

    final give = SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: const Center(
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
              letter,
              const SizedBox(
                height: 20,
              ),
              support,
              const SizedBox(
                height: 10,
              ),
              give,
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
}
