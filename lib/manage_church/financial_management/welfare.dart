import 'package:flutter/material.dart';

class Welfare extends StatefulWidget {
  const Welfare({Key? key}) : super(key: key);

  @override
  State<Welfare> createState() => _WelfareState();
}

class _WelfareState extends State<Welfare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welfare"),
      ),
      body: Container(),
    );
  }
}
