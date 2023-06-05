import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class BuildingProject extends StatefulWidget {
  const BuildingProject({Key? key}) : super(key: key);

  @override
  State<BuildingProject> createState() => _BuildingProjectState();
}

class _BuildingProjectState extends State<BuildingProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Building Project"),
      body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    SizedBox(height: 20),
                    // Text(
                    //   "Project Name",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                        hintText: "Enter name here", label: "Project Name"),
                    SizedBox(height: 40),
                    // Text(
                    //   "Allocated Amount",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                        hintText: "Enter amount here",
                        label: "Allocated Amount"),
                    SizedBox(height: 40),
                    Text(
                      "Starting Date",
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
                    Text(
                      "Ending Date",
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
                    //   "Starting Project Leaders",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      hintText: "Enter names here",
                      label: "Starting Project Leaders",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Objective",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      hintText: "Enter objective here",
                      label: "Objectives",
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Picture",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
                DefaultPrimaryButton(
                  child: Text("Submit"),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
    );
  }
}
