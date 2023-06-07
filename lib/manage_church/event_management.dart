import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/event_management/building_project.dart';
import 'package:glorycity/manage_church/event_management/children_party.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_bottom_navigation.dart';
import 'package:glorycity/widgets/custom_list_tile.dart';

class EventManagement extends StatefulWidget {
  const EventManagement({Key? key}) : super(key: key);

  @override
  State<EventManagement> createState() => _EventManagementState();
}

class _EventManagementState extends State<EventManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Event Management"),
        body: Container(),
        bottomNavigationBar: BottomNavBar(
          idx: 1,
        ),
        drawer: Drawer(
            child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Event Management"),
            ),
            CustomListTile(
              icon: 'bar-chart',
              title: 'Building Project',
              page: BuildingProject(),
            ),
            CustomListTile(
              icon: 'award',
              title: 'Children Party',
              page: ChildrenParty(),
            ),
            // CustomListTile(
            //   icon: 'minimize-2',
            //   title: 'Convention',
            //   page: Convention(),
            // ),
            // CustomListTile(
            //   icon: 'slack',
            //   title: 'Funeral',
            //   page: Funeral(),
            // ),
            // CustomListTile(
            //   icon: 'wind',
            //   title: 'Wedding',
            //   page: Wedding(),
            // ),
          ],
        )));
  }
}
