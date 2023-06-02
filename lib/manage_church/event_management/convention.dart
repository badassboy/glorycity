import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class Convention extends StatefulWidget {
  const Convention({Key? key}) : super(key: key);

  @override
  State<Convention> createState() => _ConventionState();
}

class _ConventionState extends State<Convention> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Convention"),
      body: Container(),
    );
  }
}
