import 'package:flutter/material.dart';

class ChurchElders extends StatefulWidget {
  const ChurchElders({Key? key}) : super(key: key);

  @override
  State<ChurchElders> createState() => _ChurchEldersState();
}

class _ChurchEldersState extends State<ChurchElders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Church Elders"),
      ),
      body: Container(),
    );
  }
}
