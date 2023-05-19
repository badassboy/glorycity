import 'package:flutter/material.dart';

class NewConverts extends StatefulWidget {
  const NewConverts({Key? key}) : super(key: key);

  @override
  State<NewConverts> createState() => _NewConvertsState();
}

class _NewConvertsState extends State<NewConverts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Converts"),
      ),
      body: Container(),
    );
  }
}
