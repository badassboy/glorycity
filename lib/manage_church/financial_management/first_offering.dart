import 'package:flutter/material.dart';

class FirstOffering extends StatefulWidget {
  const FirstOffering({Key? key}) : super(key: key);

  @override
  State<FirstOffering> createState() => _FirstOfferingState();
}

class _FirstOfferingState extends State<FirstOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Offering"),
      ),
      body: Container(),
    );
  }
}
