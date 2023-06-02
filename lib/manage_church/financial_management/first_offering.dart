import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class FirstOffering extends StatefulWidget {
  const FirstOffering({Key? key}) : super(key: key);

  @override
  State<FirstOffering> createState() => _FirstOfferingState();
}

class _FirstOfferingState extends State<FirstOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "First Offering"),
      body: Container(),
    );
  }
}
