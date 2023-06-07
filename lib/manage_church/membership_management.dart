import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/membership_management/members.dart';
import 'package:glorycity/manage_church/membership_management/new_convert.dart';
import 'package:glorycity/manage_church/membership_management/visitors.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
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
        appBar: CustomAppBar(title: "Membership Management"),
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
              icon: 'users',
              title: 'Members',
              page: Members(),
            ),
            CustomListTile(
              icon: 'user-plus',
              title: 'New Convert',
              page: NewConverts(),
            ),
            CustomListTile(
              icon: 'users',
              title: 'Visitors',
              page: Visitors(),
            ),
          ],
        )));
  }
}
