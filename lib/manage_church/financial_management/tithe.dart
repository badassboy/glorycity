import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class Tithe extends StatefulWidget {
  const Tithe({Key? key}) : super(key: key);

  @override
  State<Tithe> createState() => _TitheState();
}

class _TitheState extends State<Tithe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Title"),
      body: Container(),
    );
  }
}
