import 'package:flutter/material.dart';

class ChurchChoir extends StatefulWidget {
  const ChurchChoir({Key? key}) : super(key: key);

  @override
  State<ChurchChoir> createState() => _ChurchChoirState();
}

class _ChurchChoirState extends State<ChurchChoir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Church Choir"),
      ),
      body: Container(),
    );
  }
}
