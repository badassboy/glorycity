import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class ChurchChoir extends StatefulWidget {
  const ChurchChoir({Key? key}) : super(key: key);

  @override
  State<ChurchChoir> createState() => _ChurchChoirState();
}

class _ChurchChoirState extends State<ChurchChoir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Church Choir"),
      body: Container(),
    );
  }
}
