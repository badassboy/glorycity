import 'package:flutter/material.dart';

class Visitors extends StatefulWidget {
  const Visitors({Key? key}) : super(key: key);

  @override
  State<Visitors> createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visitors"),
      ),
      body: Container(),
    );
  }
}
