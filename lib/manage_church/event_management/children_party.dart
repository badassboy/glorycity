import 'package:flutter/material.dart';

class ChildrenParty extends StatefulWidget {
  const ChildrenParty({Key? key}) : super(key: key);

  @override
  State<ChildrenParty> createState() => _ChildrenPartyState();
}

class _ChildrenPartyState extends State<ChildrenParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Children Party"),
      ),
      body: Container(),
    );
  }
}
