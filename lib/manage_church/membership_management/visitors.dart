import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class Visitors extends StatefulWidget {
  const Visitors({Key? key}) : super(key: key);

  @override
  State<Visitors> createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {
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
                  child: ListView(children: const [
                    SizedBox(height: 20),
                    // Text(
                    //   "Full Name",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Name",
                      hintText: "Enter name here",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Phone Number",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    CustomTextFormField(
                      label: "Phone Number",
                      hintText: "Enter phone number here",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Age",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Age",
                      hintText: "Enter age here",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Occupation",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Occupation",
                      hintText: "Enter occupation here",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Location",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Location",
                      hintText: "Enter place of residence here",
                    ),
                    SizedBox(height: 40),
                    // Text(
                    //   "Hometown",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    SecondaryTextFormField(
                      label: "Home",
                      hintText: "Enter hometown here",
                    ),
                    SizedBox(height: 40),
                    SecondaryTextFormField(
                      label: "Referral number of relative",
                      hintText: "Enter relative number here",
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
