import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class Welfare extends StatefulWidget {
  const Welfare({Key? key}) : super(key: key);

  @override
  State<Welfare> createState() => _WelfareState();
}

class _WelfareState extends State<Welfare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Welfare"),
      body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    SizedBox(height: 130),
                    CustomTextFormField(
                      hintText: "Enter amount here",
                      label: "Amount",
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 18),
                    ),
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
                    SizedBox(height: 100),
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
