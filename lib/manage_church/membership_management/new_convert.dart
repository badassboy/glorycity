import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class NewConverts extends StatefulWidget {
  const NewConverts({Key? key}) : super(key: key);

  @override
  State<NewConverts> createState() => _NewConvertsState();
}

class _NewConvertsState extends State<NewConverts> {
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
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Phone Number",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Phone Number",
                      hintText: "Enter phone here",
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
