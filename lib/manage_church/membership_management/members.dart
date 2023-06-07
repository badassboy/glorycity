import 'package:flutter/material.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user_provider.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';
import 'package:provider/provider.dart';

class Members extends StatefulWidget {
  const Members({Key? key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
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
      appBar: CustomAppBar(title: "Visitors"),
      body: Container(
          padding: EdgeInsets.all(10),
          //decoration: BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    SizedBox(height: 20),
                    // Text(
                    //   "Full Name",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Name",
                      hintText: "Enter name here",
                      controller: nameController,
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Phone Number",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Phone Number",
                      hintText: "Enter phone number here",
                      keyboardType: TextInputType.number,
                      controller: numberController,
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Age",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Age",
                      hintText: "Enter age here",
                      keyboardType: TextInputType.number,
                      controller: ageController,
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Occupation",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Occupation",
                      hintText: "Enter occupation here",
                      controller: occupationController,
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Location",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Location",
                      hintText: "Enter place of residence here",
                      controller: locationController,
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Hometown",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Hometown",
                      hintText: "Enter hometown here",
                      controller: hometownController,
                    ),
                    SizedBox(height: 40),
                    SecondaryTextFormField(
                      label: "Referral number of relative",
                      hintText: "Enter relative number here",
                      controller: referralNumberController,
                      keyboardType: TextInputType.number,
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
                              .addMember(
                                  nameController.text,
                                  int.parse(numberController.text),
                                  int.parse(ageController.text),
                                  occupationController.text,
                                  locationController.text,
                                  hometownController.text,
                                  int.parse(referralNumberController.text),
                                  "Members",
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
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
    );
  }
}
