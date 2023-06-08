import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SundaySchoolOffering extends StatefulWidget {
  const SundaySchoolOffering({Key? key}) : super(key: key);

  @override
  State<SundaySchoolOffering> createState() => _SundaySchoolOfferingState();
}

class _SundaySchoolOfferingState extends State<SundaySchoolOffering> {
  UserProvider? userProvider;
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  String dateGet = "";
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sunday School Offering "),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    const SizedBox(height: 70),
                    CustomTextFormField(
                      hintText: "Enter name here",
                      label: "Sunday School Name",
                      controller: nameController,
                    ),
                    const SizedBox(height: 40),
                    CustomTextFormField(
                      hintText: "Enter amount here",
                      label: "Amount",
                      controller: amountController,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 40),
                    const TextStart(
                      label: "Date",
                    ),
                    const SizedBox(height: 7),
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
                              dateGet =
                                  DateFormat('d-MMM-yy').format(selectedDate);
                            });
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      child: DefaultPrimaryButton(
                        onPressed: !isLoading
                            ? null
                            : () async {
                                setState(() {
                                  isLoading = false;
                                });
                                await FirebaseServices()
                                    .addFinancialManagement(
                                        nameController.text,
                                        double.parse(amountController.text),
                                        dateGet,
                                        "Sunday School Offering",
                                        userProvider?.appUser?.id)
                                    .whenComplete(() => {
                                          setState(() {
                                            isLoading = true;
                                          }),
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  backgroundColor: Colors.blue,
                                                  content: Center(
                                                      child: Text(
                                                          "Submit Success")))),
                                          nameController.clear(),
                                          amountController.clear()
                                        });
                              },
                        child: Visibility(
                            visible: isLoading,
                            replacement: const CircularProgressIndicator(),
                            child: const Text("Submit")),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
