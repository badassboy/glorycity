import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Welfare extends StatefulWidget {
  const Welfare({Key? key}) : super(key: key);

  @override
  State<Welfare> createState() => _WelfareState();
}

class _WelfareState extends State<Welfare> {
  UserProvider? userProvider;
  TextEditingController amountController = TextEditingController();
  bool isLoading = true;
  String dateGet = "";
  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Welfare"),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    const SizedBox(height: 130),
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
                    const SizedBox(height: 100),
                    DefaultPrimaryButton(
                      onPressed: !isLoading
                          ? null
                          : () {
                              setState(() {
                                isLoading = false;
                              });
                              FirebaseServices()
                                  .addFinancialManagement_2(
                                      double.parse(amountController.text),
                                      dateGet,
                                      "Welfare",
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
                                        amountController.clear()
                                      });
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
