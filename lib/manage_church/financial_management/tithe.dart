import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Tithe extends StatefulWidget {
  const Tithe({Key? key}) : super(key: key);

  @override
  State<Tithe> createState() => _TitheState();
}

class _TitheState extends State<Tithe> {
  FirebaseAuth auth = FirebaseAuth.instance;
  UserProvider? userProvider;
  FirebaseFirestore store = FirebaseFirestore.instance;
  TextEditingController memberName = TextEditingController();
  TextEditingController amount = TextEditingController();
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
      appBar: CustomAppBar(title: "Tithe"),
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
                      label: "Member Name",
                      controller: memberName,
                    ),
                    const SizedBox(height: 40),
                    CustomTextFormField(
                      hintText: "Enter amount here",
                      label: "Amount",
                      controller: amount,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 40),
                    const TextStart(
                      label: "Date",
                    ),
                    DefaultPrimaryButton(
                        child: const Text("Select Date"),
                        onPressed: () async {
                          await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.utc(DateTime.now().year + 1, 12, 31),
                          ).then((selectedDate) {
                            if (selectedDate != null) {
                              setState(() {
                                dateGet =
                                    DateFormat('d-MMM-yy').format(selectedDate);
                              });
                            }
                          });
                        }),
                    const SizedBox(
                      height: 100,
                    ),
                    DefaultPrimaryButton(
                      onPressed: !isLoading
                          ? null
                          : () async {
                              setState(() {
                                isLoading = false;
                              });
                              await FirebaseServices()
                                  .addFinancialManagement(
                                      memberName.text,
                                      double.parse(amount.text),
                                      dateGet,
                                      "Tithe",
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
                                        memberName.clear(),
                                        amount.clear()
                                      });
                            },
                      child: Visibility(
                          visible: isLoading,
                          replacement: const CircularProgressIndicator(),
                          child: const Text("Submit")),
                    ),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
