import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class Youth extends StatefulWidget {
  const Youth({Key? key}) : super(key: key);

  @override
  State<Youth> createState() => _YouthState();
}

class _YouthState extends State<Youth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Youth"),
      body: Container(),
    );
  }
}
