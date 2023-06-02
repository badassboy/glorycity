import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class NewConverts extends StatefulWidget {
  const NewConverts({Key? key}) : super(key: key);

  @override
  State<NewConverts> createState() => _NewConvertsState();
}

class _NewConvertsState extends State<NewConverts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "New Converts"),
      body: Container(),
    );
  }
}
