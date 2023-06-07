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
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    // Text(
                    //   "Project Name",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const CustomTextFormField(
                      hintText: "Enter name here",
                      label: "Project Name",
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 40),
                    // Text(
                    //   "Allocated Amount",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const CustomTextFormField(
                        hintText: "Enter amount here",
                        label: "Allocated Amount"),
                    const SizedBox(height: 40),
                    const TextStart(
                      label: "Starting Date",
                    ),
                    DefaultPrimaryButton(
                      child: const Text("Select Date"),
                      onPressed: () async {
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.utc(DateTime.now().year + 1, 12, 31));
                      },
                    ),
                    const SizedBox(height: 40),
                    const TextStart(
                      label: "Ending Date",
                    ),
                    DefaultPrimaryButton(
                      child: const Text("Select Date"),
                      onPressed: () async {
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.utc(DateTime.now().year + 1, 12, 31));
                      },
                    ),
                    const SizedBox(height: 40),
                    // Text(
                    //   "Starting Project Leaders",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const SecondaryTextFormField(
                      hintText: "Enter names here",
                      label: "Starting Project Leaders",
                    ),
                    const SizedBox(height: 40),
                    // Text(
                    //   "Objective",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const SecondaryTextFormField(
                      hintText: "Enter objective here",
                      label: "Objectives",
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Picture",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
                DefaultPrimaryButton(
                  child: const Text("Submit"),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
    );
  }
}
