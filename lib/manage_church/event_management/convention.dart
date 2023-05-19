import 'package:flutter/material.dart';

class Convention extends StatefulWidget {
  const Convention({Key? key}) : super(key: key);

  @override
  State<Convention> createState() => _ConventionState();
}

class _ConventionState extends State<Convention> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convention"),
      ),
      body: Container(),
    );
  }
}
