import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glorycity/manage_church/membership_management/new_convert.dart';
import 'package:glorycity/manage_church/membership_management/visitors.dart';
import 'package:glorycity/widgets/bottomNavigation.dart';

class MembershipManagement extends StatefulWidget {
  const MembershipManagement({Key? key}) : super(key: key);

  @override
  State<MembershipManagement> createState() => _MembershipManagementState();
}

class _MembershipManagementState extends State<MembershipManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Membership management"),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavBar(
          idx: 2,
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Membership Management"),
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/user-plus.svg"),
              title: Text("New Convert"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => NewConverts()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset("./assets/svgs/users.svg"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Visitors()));
              },
              title: Text("Visitors"),
            ),
          ],
        )));
  }
}
