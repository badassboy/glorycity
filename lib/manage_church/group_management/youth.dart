import 'package:flutter/material.dart';

class Youth extends StatefulWidget {
  const Youth({Key? key}) : super(key: key);

  @override
  State<Youth> createState() => _YouthState();
}

class _YouthState extends State<Youth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youth"),
      ),
      body: Container(),
    );
  }
}
