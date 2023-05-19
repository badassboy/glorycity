import 'package:flutter/material.dart';

class SecondOffering extends StatefulWidget {
  const SecondOffering({Key? key}) : super(key: key);

  @override
  State<SecondOffering> createState() => _SecondOfferingState();
}

class _SecondOfferingState extends State<SecondOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Offering"),
      ),
      body: Container(),
    );
  }
}
