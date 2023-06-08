import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class SecondOffering extends StatefulWidget {
  const SecondOffering({Key? key}) : super(key: key);

  @override
  State<SecondOffering> createState() => _SecondOfferingState();
}

class _SecondOfferingState extends State<SecondOffering> {
  UserProvider? userProvider;
  bool isLoading = true;
  String dateGet = "";
  TextEditingController amountController = TextEditingController();
  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Second Offering"),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    const SizedBox(height: 70),
                    const Text(
                      "Second Offering",
                      style: TextStyle(fontSize: 18),
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
                            lastDate:
                                DateTime.utc(DateTime.now().year + 1, 12, 31));
                      },
                    ),
                    const SizedBox(
                      height: 150,
                    ),
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
                                      "Second Offering",
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
