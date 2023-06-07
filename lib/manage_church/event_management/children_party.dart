import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ChildrenParty extends StatefulWidget {
  const ChildrenParty({Key? key}) : super(key: key);

  @override
  State<ChildrenParty> createState() => _ChildrenPartyState();
}

class _ChildrenPartyState extends State<ChildrenParty> {
  UserProvider? userProvider;
  bool isLoading = true;
  String startDateGet = "";
  TextEditingController amountController = TextEditingController();
  TextEditingController activityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Children Party"),
      body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    const SizedBox(height: 50),
                    // Text(
                    //   "Allocated Amount",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                        label: "Allocated Amount",
                        hintText: "Enter amount here",
                        keyboardType: TextInputType.number,
                        controller: amountController),
                    const SizedBox(height: 40),
                    const TextStart(
                      label: "Celebration Date",
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
                        ;
                      },
                    ),
                    const SizedBox(height: 40),
                    // Text(
                    //   "Description",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Description",
                      hintText: "Enter description here",
                      controller: descriptionController,
                    ),
                    const SizedBox(height: 40),
                    // Text(
                    //   "Included Activities",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Included Activities",
                      hintText: "Enter activities here",
                      controller: activityController,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    DefaultPrimaryButton(
                      onPressed: !isLoading
                          ? null
                          : () {
                              setState(() {
                                isLoading = false;
                              });
                              FirebaseServices()
                                  .addEventManagementChildrenParty(
                                      int.parse(amountController.text),
                                      startDateGet,
                                      descriptionController.text,
                                      activityController.text,
                                      "Children Party",
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
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
