import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glorycity/manage_church/financial_management/end_of_year_harvest.dart';
import 'package:glorycity/manage_church/financial_management/first_offering.dart';
import 'package:glorycity/manage_church/financial_management/second_offering.dart';
import 'package:glorycity/manage_church/financial_management/sunday_school_offering.dart';
import 'package:glorycity/manage_church/financial_management/tithe.dart';
import 'package:glorycity/manage_church/financial_management/welfare.dart';
import 'package:glorycity/widgets/bottomNavigation.dart';

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
          appBar: AppBar(
            title: Text("Manage  Church"),
          ),
          body: Container(),
          bottomNavigationBar: BottomNavBar(
            idx: 0,
          ),
          drawer: Drawer(
              child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Financial Management"),
              ),
              ListTile(
                leading: SvgPicture.asset("./assets/svgs/user.svg"),
                title: Text("Tithe"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Tithe()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("./assets/svgs/check.svg"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SundaySchoolOffering()));
                },
                title: Text("Sunday School Offering"),
              ),
              ListTile(
                leading: SvgPicture.asset("./assets/svgs/check-circle.svg"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => FirstOffering()));
                },
                title: Text("First Offering"),
              ),
              ListTile(
                leading: SvgPicture.asset("./assets/svgs/check-square.svg"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SecondOffering()));
                },
                title: Text("Second offering"),
              ),
              ListTile(
                leading: SvgPicture.asset("./assets/svgs/cloud-snow.svg"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              EndOfYearHarvest()));
                },
                title: Text("End of year harvest"),
              ),
              ListTile(
                leading: SvgPicture.asset("./assets/svgs/inbox.svg"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Welfare()));
                },
                title: Text("Welfare"),
              ),
            ],
          ))),
    );
  }
}
