import 'package:flutter/material.dart';
import 'package:glorycity/manage_church/event_management/building_project.dart';
import 'package:glorycity/manage_church/event_management/children_party.dart';
import 'package:glorycity/manage_church/event_management/convention.dart';
import 'package:glorycity/manage_church/event_management/funeral.dart';
import 'package:glorycity/manage_church/event_management/wedding.dart';
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
        appBar: AppBar(
          title: Text("Event management"),
        ),
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
              title: 'Tithe',
              page: BuildingProject(),
            ),
            // ListTile(
            //   title: Text("Building Project"),
            //   leading: SvgPicture.asset("./assets/svgs/bar-chart.svg"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => BuildingProject()));
            //   },
            // ),
            CustomListTile(
              icon: 'award',
              title: 'Children Party',
              page: ChildrenParty(),
            ),
            // ListTile(
            //   leading: SvgPicture.asset("./assets/svgs/award.svg"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => ChildrenParty()));
            //   },
            //   title: Text("Children Party"),
            // ),
            CustomListTile(
              icon: 'minimize-2',
              title: 'Convention',
              page: Convention(),
            ),
            // ListTile(
            //   leading: SvgPicture.asset("./assets/svgs/minimize-2.svg"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => Convention()));
            //   },
            //   title: Text("Convention"),
            // ),
            CustomListTile(
              icon: 'slack',
              title: 'Funeral',
              page: Funeral(),
            ),
            // ListTile(
            //   leading: SvgPicture.asset("./assets/svgs/slack.svg"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => Funeral()));
            //   },
            //   title: Text("Funeral"),
            // ),
            CustomListTile(
              icon: 'wind',
              title: 'Wedding',
              page: Wedding(),
            ),
            // ListTile(
            //   leading: SvgPicture.asset("./assets/svgs/wind.svg"),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (BuildContext context) => Wedding()));
            //   },
            //   title: Text("Wedding"),
            // ),
          ],
        )));
  }
}
