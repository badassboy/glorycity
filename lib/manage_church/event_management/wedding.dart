import 'package:flutter/material.dart';

class Wedding extends StatefulWidget {
  const Wedding({Key? key}) : super(key: key);

  @override
  State<Wedding> createState() => _WeddingState();
}

class _WeddingState extends State<Wedding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wedding"),
      ),
      body: Container(),
    );
  }
}
