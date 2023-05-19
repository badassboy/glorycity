import 'package:flutter/material.dart';

class WomenAssociation extends StatefulWidget {
  const WomenAssociation({Key? key}) : super(key: key);

  @override
  State<WomenAssociation> createState() => _WomenAssociationState();
}

class _WomenAssociationState extends State<WomenAssociation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Women Association"),
      ),
      body: Container(),
    );
  }
}
