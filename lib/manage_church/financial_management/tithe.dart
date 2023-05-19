import 'package:flutter/material.dart';

class Tithe extends StatefulWidget {
  const Tithe({Key? key}) : super(key: key);

  @override
  State<Tithe> createState() => _TitheState();
}

class _TitheState extends State<Tithe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tithe"),
      ),
      body: Container(),
    );
  }
}
