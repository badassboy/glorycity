import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class MenAssociation extends StatefulWidget {
  const MenAssociation({Key? key}) : super(key: key);

  @override
  State<MenAssociation> createState() => _MenAssociationState();
}

class _MenAssociationState extends State<MenAssociation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Men Association"),
      body: Container(),
    );
  }
}
