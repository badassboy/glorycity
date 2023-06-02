import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class ChurchElders extends StatefulWidget {
  const ChurchElders({Key? key}) : super(key: key);

  @override
  State<ChurchElders> createState() => _ChurchEldersState();
}

class _ChurchEldersState extends State<ChurchElders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Church Elders"),
      body: Container(),
    );
  }
}
