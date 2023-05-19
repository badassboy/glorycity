import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glorycity/manage_church/group_management/church_choir.dart';
import 'package:glorycity/manage_church/group_management/church_elders.dart';
import 'package:glorycity/manage_church/group_management/men_association.dart';
import 'package:glorycity/manage_church/group_management/women_association.dart';
import 'package:glorycity/manage_church/group_management/youth.dart';
import 'package:glorycity/widgets/bottomNavigation.dart';

class GroupManagement extends StatefulWidget {
  const GroupManagement({Key? key}) : super(key: key);

  @override
  State<GroupManagement> createState() => _GroupManagementState();
}

class _GroupManagementState extends State<GroupManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Group Management"),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavBar(
          idx: 3,
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Group Management"),
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/layers.svg"),
              title: Text("Church Choir"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ChurchChoir()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/user.svg"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ChurchElders()));
              },
              title: Text("Church Elders"),
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/user.svg"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MenAssociation()));
              },
              title: Text("Men Association"),
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/user.svg"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => WomenAssociation()));
              },
              title: Text("Women Assocition"),
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/user.svg"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Youth()));
              },
              title: Text("Youth"),
            ),
          ],
        )));
  }
}
