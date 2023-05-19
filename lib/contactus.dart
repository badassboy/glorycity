import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final info = SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Column(
        children: [
          const Center(
            child: Text(
              "Contact Us",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(color: HexColor("#cf6161")),
            child: Column(
              children: const [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "ABOUT US",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "GloryCity Chapel International is a word based, prophetic, deliverance and healing ministry. We believe in impacting and inspiring people with the true word of God",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: HexColor("#cf6161")),
            child: Column(
              children: const [
                Text(
                  "ADDRESS",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "134 Evergreen pl, Suite 902",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "East Orange, NJ 07018",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(color: HexColor("#cf6161")),
            child: Column(
              children: const [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "CONTACT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "973-567-7746 / 646-934-3264",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "info@glorycitychapel.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

    final contactForm = Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Center(
            child: Text(
              "Please fill below form to reach us",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Name"),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: messageController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Message",
                alignLabelWithHint: true,
              ),
              maxLines: 8,
              maxLength: 1000,

            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 100),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("GloryCity"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            info,
            const SizedBox(
              height: 10,
            ),
            contactForm,
          ],
        ),
      ),
    );
  }
}
