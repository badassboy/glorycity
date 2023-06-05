import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class ChildrenParty extends StatefulWidget {
  const ChildrenParty({Key? key}) : super(key: key);

  @override
  State<ChildrenParty> createState() => _ChildrenPartyState();
}

class _ChildrenPartyState extends State<ChildrenParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Children Party"),
      body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    SizedBox(height: 50),
                    // Text(
                    //   "Allocated Amount",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Allocated Amount",
                      hintText: "Enter amount here",
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Celebration Date",
                      style: TextStyle(fontSize: 18),
                    ),
                    DefaultPrimaryButton(
                      child: Text("Select Date"),
                      onPressed: () async {
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.utc(DateTime.now().year + 1, 12, 31));
                      },
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Description",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Description",
                      hintText: "Enter description here",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Included Activities",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Included Activities",
                      hintText: "Enter activities here",
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    DefaultPrimaryButton(
                      child: Text("Submit"),
                      onPressed: () {},
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
