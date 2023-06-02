import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class Visitors extends StatefulWidget {
  const Visitors({Key? key}) : super(key: key);

  @override
  State<Visitors> createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Visitors"),
      body: Container(),
    );
  }
}
