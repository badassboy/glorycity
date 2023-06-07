import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class BuildingProject extends StatefulWidget {
  const BuildingProject({Key? key}) : super(key: key);

  @override
  State<BuildingProject> createState() => _BuildingProjectState();
}

class _BuildingProjectState extends State<BuildingProject> {
  TextEditingController projectNameController = TextEditingController();
  TextEditingController projectLeadersController = TextEditingController();
  TextEditingController objectivesController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  bool isLoading = true;
  UserProvider? userProvider;
  String startDateGet = "";
  String endDateGet = "";
  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

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
                    CustomTextFormField(
                      hintText: "Enter name here",
                      label: "Project Name",
                      controller: projectNameController,
                    ),
                    const SizedBox(height: 40),
                    CustomTextFormField(
                        hintText: "Enter amount here",
                        controller: amountController,
                        keyboardType: TextInputType.number,
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
                                lastDate: DateTime.utc(
                                    DateTime.now().year + 1, 12, 31))
                            .then((selectedDate) {
                          if (selectedDate != null) {
                            setState(() {
                              startDateGet =
                                  DateFormat('d-MMM-yy').format(selectedDate);
                            });
                          }
                        });
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
                                lastDate: DateTime.utc(
                                    DateTime.now().year + 1, 12, 31))
                            .then((selectedDate) {
                          if (selectedDate != null) {
                            setState(() {
                              endDateGet =
                                  DateFormat('d-MMM-yy').format(selectedDate);
                            });
                          }
                        });
                      },
                    ),
                    const SizedBox(height: 40),
                    SecondaryTextFormField(
                      hintText: "Enter names here",
                      label: "Starting Project Leaders",
                      controller: projectLeadersController,
                    ),
                    const SizedBox(height: 40),
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
                  onPressed: !isLoading
                      ? null
                      : () {
                          setState(() {
                            isLoading = false;
                          });
                          FirebaseServices()
                              .addEventManagement(
                                  projectNameController.text,
                                  int.parse(amountController.text),
                                  startDateGet,
                                  endDateGet,
                                  projectLeadersController.text,
                                  objectivesController.text,
                                  "Building Project",
                                  userProvider?.appUser?.id)
                              .whenComplete(() => setState(() {
                                    isLoading = true;
                                  }));
                        },
                  child: Visibility(
                      visible: isLoading,
                      replacement: const CircularProgressIndicator(),
                      child: const Text("Submit")),
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
