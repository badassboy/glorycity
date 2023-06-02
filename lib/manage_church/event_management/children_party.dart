import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class ChildrenParty extends StatefulWidget {
  const ChildrenParty({Key? key}) : super(key: key);

  @override
  State<ChildrenParty> createState() => _ChildrenPartyState();
}

class _ChildrenPartyState extends State<ChildrenParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Children Party"),
      body: Container(),
    );
  }
}
