import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/button_box.dart';
import 'package:flutter_application_3/widgets/input_box.dart';

class PersonalDetailContainer extends StatefulWidget {
  const PersonalDetailContainer({super.key});

  @override
  State<PersonalDetailContainer> createState() =>
      _PersonalDetailContainerState();
}

class _PersonalDetailContainerState extends State<PersonalDetailContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.10) / 18,
          ),
          InputBox(name: "First Name", inputType: TextInputType.name),
          InputBox(name: "Last Name", inputType: TextInputType.name),
          InputBox(name: "UserName", inputType: TextInputType.name),
          InputBox(name: "Old Password", inputType: TextInputType.name),
          /*InputBox(name: "New Password", inputType: TextInputType.name),*/
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.1) / 18,
          ),
          ButtonBox(buttonName: "Save Changes")
        ],
      ),
    );
  }
}
