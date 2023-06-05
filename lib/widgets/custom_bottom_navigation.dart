import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:glorycity/wdgets/MainButton.dart';

class BottomNavBar extends StatefulWidget {
  int idx;
  BottomNavBar({Key? key, required this.idx}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // selectedItemColor: Colors.pink,
      //unselectedItemColor: Colors.black,
      //showSelectedLabels: false,
      //showUnselectedLabels: false,
      // color: Color.fromRGBO(0, 110, 255, 1),
      onTap: (index) {
        if (index == 0) {
          setState(() {
            Navigator.pushReplacementNamed(context, "finance");
            widget.idx = index;
          });
        } else if (index == 1) {
          setState(() {
            Navigator.pushReplacementNamed(context, "event");
            widget.idx = index;
          });
        } else if (index == 2) {
          setState(() {
            Navigator.pushReplacementNamed(context, "member");
            widget.idx = index;
          });
        } else if (index == 3) {
          setState(() {
            Navigator.pushReplacementNamed(context, "people");
            widget.idx = index;
          });
        } else if (index == 4) {
          setState(() {
            Navigator.pushReplacementNamed(context, "attendance");
            widget.idx = index;
          });
        }
      },
      currentIndex: widget.idx,
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset('./assets/svgs/dollar-sign.svg',
              color: Colors.blue),
          label: "Finance",
          tooltip: "Finance management",
          icon: SvgPicture.asset('./assets/svgs/dollar-sign.svg',
              color: Colors.black, width: 18, height: 18),
        ),
        BottomNavigationBarItem(
          label: "Event",
          tooltip: "Event management",
          icon: SvgPicture.asset('./assets/svgs/navigation.svg',
              color: Colors.black, width: 18, height: 18),
          activeIcon: SvgPicture.asset('./assets/svgs/navigation.svg',
              color: Colors.blue),
        ),
        BottomNavigationBarItem(
          label: "Membership",
          tooltip: "Membership management",
          //backgroundColor: Color.fromRGBO(0, 110, 255, 1),
          icon: SvgPicture.asset('./assets/svgs/edit.svg',
              color: Colors.black, width: 18, height: 18),
          activeIcon:
              SvgPicture.asset('./assets/svgs/edit.svg', color: Colors.blue),
        ),
        BottomNavigationBarItem(
          label: "Group",
          tooltip: "Group management",
          icon: SvgPicture.asset('./assets/svgs/users.svg',
              color: Colors.black, width: 18, height: 18),
          activeIcon:
              SvgPicture.asset('./assets/svgs/users.svg', color: Colors.blue),
        ),
        BottomNavigationBarItem(
          label: "Attendance",
          tooltip: "Attendance management",
          // backgroundColor: Color.fromRGBO(0, 110, 255, 1),
          icon: SvgPicture.asset('./assets/svgs/corner-left-up.svg',
              color: Colors.black, width: 18, height: 18),
          activeIcon: SvgPicture.asset('./assets/svgs/corner-left-up.svg',
              color: Colors.blue),
        ),
      ],
    );
  }
}
