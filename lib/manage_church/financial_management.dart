import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/financial_management/end_of_year_harvest.dart';
import 'package:glorycity/manage_church/financial_management/first_offering.dart';
import 'package:glorycity/manage_church/financial_management/second_offering.dart';
import 'package:glorycity/manage_church/financial_management/sunday_school_offering.dart';
import 'package:glorycity/manage_church/financial_management/tithe.dart';
import 'package:glorycity/manage_church/financial_management/welfare.dart';
import 'package:glorycity/widgets/custom_bottom_navigation.dart';
import 'package:glorycity/widgets/custom_list_tile.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';

class FinancialManagement extends StatefulWidget {
  const FinancialManagement({Key? key}) : super(key: key);

  @override
  State<FinancialManagement> createState() => _FinancialManagementState();
}

class _FinancialManagementState extends State<FinancialManagement> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar:CustomAppBar(title: "Funeral"),
          body: Container(),
          bottomNavigationBar: BottomNavBar(
            idx: 0,
          ),
          drawer: Drawer(
              child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Financial Management"),
              ),
              CustomListTile(
                icon: 'user',
                title: 'Tithe',
                page: Tithe(),
              ),
              CustomListTile(
                icon: 'check',
                title: 'Sunday School Offering',
                page: SundaySchoolOffering(),
              ),
              CustomListTile(
                icon: 'check-circle',
                title: 'First Offering',
                page: FirstOffering(),
              ),
              CustomListTile(
                icon: 'check-square',
                title: 'Second Offering',
                page: SecondOffering(),
              ),
              CustomListTile(
                icon: 'cloud-snow',
                title: 'End Of Year Harvest',
                page: EndOfYearHarvest(),
              ),
              CustomListTile(
                icon: 'inbox',
                title: 'Welfare',
                page: Welfare(),
              ),
            ],
          ))),
    );
  }
}
