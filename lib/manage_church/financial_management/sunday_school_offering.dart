import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class SundaySchoolOffering extends StatefulWidget {
  const SundaySchoolOffering({Key? key}) : super(key: key);

  @override
  State<SundaySchoolOffering> createState() => _SundaySchoolOfferingState();
}

class _SundaySchoolOfferingState extends State<SundaySchoolOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sunday School Offering "),
      body: Container(),
    );
  }
}
