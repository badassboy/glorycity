import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  final String icon;
  final String title;
  final Widget page;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset("./assets/svgs/${icon}.svg"),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return page;
        }));
      },
      title: Text(title),
    );
  }
}
