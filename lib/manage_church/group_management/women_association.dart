import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class WomenAssociation extends StatefulWidget {
  const WomenAssociation({Key? key}) : super(key: key);

  @override
  State<WomenAssociation> createState() => _WomenAssociationState();
}

class _WomenAssociationState extends State<WomenAssociation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Women Association"),
      body: Container(),
    );
  }
}
