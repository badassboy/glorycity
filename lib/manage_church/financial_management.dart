import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/financial_management/end_of_year_harvest.dart';
import 'package:glorycity/manage_church/financial_management/first_offering.dart';
import 'package:glorycity/manage_church/financial_management/second_offering.dart';
import 'package:glorycity/manage_church/financial_management/sunday_school_offering.dart';
import 'package:glorycity/manage_church/financial_management/tithe.dart';
import 'package:glorycity/manage_church/financial_management/welfare.dart';
import 'package:glorycity/widgets/custom_bottom_navigation.dart';
import 'package:glorycity/widgets/custom_list_tile.dart';

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
              // ListTile(
              //   leading: SvgPicture.asset("./assets/svgs/user.svg"),
              //   title: Text("Tithe"),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (BuildContext context) => Tithe()));
              //   },
              // ),
              CustomListTile(
                icon: 'check',
                title: 'Sunday School Offering',
                page: SundaySchoolOffering(),
              ),
              // ListTile(
              //   leading: SvgPicture.asset("./assets/svgs/check.svg"),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (BuildContext context) =>
              //                 SundaySchoolOffering()));
              //   },
              //   title: Text("Sunday School Offering"),
              // ),
              CustomListTile(
                icon: 'check-circle',
                title: 'First Offering',
                page: FirstOffering(),
              ),
              // ListTile(
              //   leading: SvgPicture.asset("./assets/svgs/check-circle.svg"),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (BuildContext context) => FirstOffering()));
              //   },
              //   title: Text("First Offering"),
              // ),
              CustomListTile(
                icon: 'check-square',
                title: 'Second Offering',
                page: SecondOffering(),
              ),
              // ListTile(
              //   leading: SvgPicture.asset("./assets/svgs/check-square.svg"),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (BuildContext context) => SecondOffering()));
              //   },
              //   title: Text("Second offering"),
              // ),
              CustomListTile(
                icon: 'cloud-snow',
                title: 'End Of Year Harvest',
                page: EndOfYearHarvest(),
              ),
              // ListTile(
              //   leading: SvgPicture.asset("./assets/svgs/cloud-snow.svg"),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (BuildContext context) =>
              //                 EndOfYearHarvest()));
              //   },
              //   title: Text("End of year harvest"),
              // ),
              CustomListTile(
                icon: 'inbox',
                title: 'Welfare',
                page: Welfare(),
              ),
              // ListTile(
              //   leading: SvgPicture.asset("./assets/svgs/inbox.svg"),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (BuildContext context) => Welfare()));
              //   },
              //   title: Text("Welfare"),
              // ),
            ],
          ))),
    );
  }
}
