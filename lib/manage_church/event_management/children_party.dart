import 'package:flutter/material.dart';
import 'package:glorycity/widgets/custom_app_bar.dart';
import 'package:glorycity/widgets/custom_buttons.dart';
import 'package:glorycity/widgets/text_fields.dart';

class ChildrenParty extends StatefulWidget {
  const ChildrenParty({Key? key}) : super(key: key);

  @override
  State<ChildrenParty> createState() => _ChildrenPartyState();
}

class _ChildrenPartyState extends State<ChildrenParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Children Party"),
      body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(children: [
                    const SizedBox(height: 50),
                    // Text(
                    //   "Allocated Amount",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const CustomTextFormField(
                      label: "Allocated Amount",
                      hintText: "Enter amount here",
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 40),
                    const TextStart(
                      label: "Celebration Date",
                    ),
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
                    const SizedBox(height: 40),
                    // Text(
                    //   "Description",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const SecondaryTextFormField(
                      label: "Description",
                      hintText: "Enter description here",
                    ),
                    const SizedBox(height: 40),
                    // Text(
                    //   "Included Activities",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    const SecondaryTextFormField(
                      label: "Included Activities",
                      hintText: "Enter activities here",
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    DefaultPrimaryButton(
                      child: const Text("Submit"),
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
