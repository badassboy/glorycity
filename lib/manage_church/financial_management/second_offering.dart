import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class SecondOffering extends StatefulWidget {
  const SecondOffering({Key? key}) : super(key: key);

  @override
  State<SecondOffering> createState() => _SecondOfferingState();
}

class _SecondOfferingState extends State<SecondOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Second Offering"),
      body: Container(),
    );
  }
}
