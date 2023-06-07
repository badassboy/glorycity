import 'package:flutter/material.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class NewConverts extends StatefulWidget {
  const NewConverts({Key? key}) : super(key: key);

  @override
  State<NewConverts> createState() => _NewConvertsState();
}

class _NewConvertsState extends State<NewConverts> {
  bool isLoading = true;
  UserProvider? userProvider;
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController referralNumberController = TextEditingController();
  TextEditingController hometownController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "New Converts"),
      body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: const [
                    SizedBox(height: 20),
                    // Text(
                    //   "Full Name",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Full Name",
                      hintText: "Enter amount here",
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Phone Number",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Phone Number",
                      hintText: "Enter phone here",
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 40),
                    CustomTextFormField(
                      label: "Age",
                      hintText: "Enter age here",
                    ),
                    SizedBox(height: 40),
                    CustomTextFormField(
                      label: "Occupation",
                      hintText: "Enter work here",
                    ),
                    SizedBox(height: 40),
                    SecondaryTextFormField(
                      label: "Location",
                      hintText: "Enter residence here",
                    ),
                    SizedBox(height: 40),
                    SecondaryTextFormField(
                      label: "Referral Name(Optional)",
                      hintText: "Enter other names here",
                    ),
                    SizedBox(height: 40),
                    SecondaryTextFormField(
                      label: "Hometown",
                    ),
                    SizedBox(height: 40),
                    SecondaryTextFormField(
                      label: "Referral number of relative",
                      hintText: "Enter relative number here",
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 40),
                    Text(
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
                          // FirebaseServices()
                          //     .addFinancialManagement_2(
                          //         double.parse(amountController.text),
                          //         dateGet,
                          //         "Second Offering",
                          //         userProvider?.appUser?.id)
                          //     .whenComplete(() => setState(() {
                          //           isLoading = true;
                          //         }));
                        },
                  child: Visibility(
                      visible: isLoading,
                      replacement: const CircularProgressIndicator(),
                      child: const Text("Submit")),
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
