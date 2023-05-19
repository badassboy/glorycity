import 'package:flutter/material.dart';

class EndOfYearHarvest extends StatefulWidget {
  const EndOfYearHarvest({Key? key}) : super(key: key);

  @override
  State<EndOfYearHarvest> createState() => _EndOfYearHarvestState();
}

class _EndOfYearHarvestState extends State<EndOfYearHarvest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End Of Year Harvest"),
      ),
      body: Container(),
    );
  }
}
