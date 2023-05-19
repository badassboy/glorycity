import 'package:flutter/material.dart';

class SundaySchoolOffering extends StatefulWidget {
  const SundaySchoolOffering({Key? key}) : super(key: key);

  @override
  State<SundaySchoolOffering> createState() => _SundaySchoolOfferingState();
}

class _SundaySchoolOfferingState extends State<SundaySchoolOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sunday School Offering"),
      ),
      body: Container(),
    );
  }
}
