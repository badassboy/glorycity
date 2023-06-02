import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class BuildingProject extends StatefulWidget {
  const BuildingProject({Key? key}) : super(key: key);

  @override
  State<BuildingProject> createState() => _BuildingProjectState();
}

class _BuildingProjectState extends State<BuildingProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "BUlding Project"),
      body: Container(),
    );
  }
}
