import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_bottom_navigation.dart';

class AttendanceManagement extends StatefulWidget {
  const AttendanceManagement({Key? key}) : super(key: key);

  @override
  State<AttendanceManagement> createState() => _AttendanceManagementState();
}

class _AttendanceManagementState extends State<AttendanceManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Attendance"),
      body: Container(),
      bottomNavigationBar: BottomNavBar(
        idx: 4,
      ),
    );
  }
}
