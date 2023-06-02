import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class Funeral extends StatefulWidget {
  const Funeral({Key? key}) : super(key: key);

  @override
  State<Funeral> createState() => _FuneralState();
}

class _FuneralState extends State<Funeral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Funeral"),
      body: Container(),
    );
  }
}
