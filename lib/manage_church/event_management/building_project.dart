import 'package:flutter/material.dart';

class BuildingProject extends StatefulWidget {
  const BuildingProject({Key? key}) : super(key: key);

  @override
  State<BuildingProject> createState() => _BuildingProjectState();
}

class _BuildingProjectState extends State<BuildingProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Building Project"),
      ),
      body: Container(),
    );
  }
}
