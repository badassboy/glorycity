import 'package:flutter/material.dart';

class Funeral extends StatefulWidget {
  const Funeral({Key? key}) : super(key: key);

  @override
  State<Funeral> createState() => _FuneralState();
}

class _FuneralState extends State<Funeral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Funeral"),
      ),
      body: Container(),
    );
  }
}
