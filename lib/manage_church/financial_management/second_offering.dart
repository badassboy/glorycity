import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class SecondOffering extends StatefulWidget {
  const SecondOffering({Key? key}) : super(key: key);

  @override
  State<SecondOffering> createState() => _SecondOfferingState();
}

class _SecondOfferingState extends State<SecondOffering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Second Offering"),
      body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    SizedBox(height: 70),
                    Text(
                      "Second Offering",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 40),
                    CustomTextFormField(
                      hintText: "Enter amount here",
                      label: "Amount",
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 7),
                    DefaultPrimaryButton(
                      child: Text("Select Date"),
                      onPressed: () async {
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.utc(DateTime.now().year + 1, 12, 31));
                      },
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    DefaultPrimaryButton(
                      child: Text("Submit"),
                      onPressed: () {},
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
