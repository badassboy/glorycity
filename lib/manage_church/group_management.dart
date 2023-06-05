import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/group_management/church_choir.dart';
import 'package:glorycity/manage_church/group_management/church_elders.dart';
import 'package:glorycity/manage_church/group_management/men_association.dart';
import 'package:glorycity/manage_church/group_management/women_association.dart';
import 'package:glorycity/manage_church/group_management/youth.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_bottom_navigation.dart';
import 'package:glorycity/widgets/custom_list_tile.dart';

class GroupManagement extends StatefulWidget {
  const GroupManagement({Key? key}) : super(key: key);

  @override
  State<GroupManagement> createState() => _GroupManagementState();
}

class _GroupManagementState extends State<GroupManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Group Management"),
        body: Container(),
        bottomNavigationBar: BottomNavBar(
          idx: 3,
        ),
        drawer: Drawer(
            child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Group Management"),
            ),
            CustomListTile(
              icon: 'layers',
              title: 'Church Choir',
              page: ChurchChoir(),
            ),
            CustomListTile(
              icon: 'user',
              title: 'Church Elders',
              page: ChurchElders(),
            ),
            CustomListTile(
              icon: 'user',
              title: 'Men Association',
              page: MenAssociation(),
            ),
            CustomListTile(
              icon: 'user',
              title: 'Women Association',
              page: WomenAssociation(),
            ),
            CustomListTile(
              icon: 'user',
              title: 'Youth',
              page: Youth(),
            ),
          ],
        )));
  }
}
