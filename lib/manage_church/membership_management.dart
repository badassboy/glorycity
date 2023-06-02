import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/membership_management/new_convert.dart';
import 'package:glorycity/manage_church/membership_management/visitors.dart';
import 'package:glorycity/widgets/custom_bottom_navigation.dart';
import 'package:glorycity/widgets/custom_list_tile.dart';

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
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Membership Management"),
            ),
            CustomListTile(
              icon: 'user-plus',
              title: 'New Convert',
              page: NewConverts(),
            ),
            // ListTile(
            //   leading: SvgPicture.asset("./assets/svgs/user-plus.svg"),
            //   title: Text("New Convert"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => NewConverts()));
            //   },
            // ),
            CustomListTile(
              icon: 'users',
              title: 'Visitors',
              page: Visitors(),
            ),
            // ListTile(
            //   leading: SvgPicture.asset("./assets/svgs/users.svg"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => Visitors()));
            //   },
            //   title: Text("Visitors"),
            // ),
          ],
        )));
  }
}
