import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class EndOfYearHarvest extends StatefulWidget {
  const EndOfYearHarvest({Key? key}) : super(key: key);

  @override
  State<EndOfYearHarvest> createState() => _EndOfYearHarvestState();
}

class _EndOfYearHarvestState extends State<EndOfYearHarvest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "End Of Year Harvest"),
      body: Container(),
    );
  }
}
