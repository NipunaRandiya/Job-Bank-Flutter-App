import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/button_box.dart';
import 'package:flutter_application_3/widgets/input_box.dart';

class DocumentDetailContainer extends StatefulWidget {
  const DocumentDetailContainer({super.key});

  @override
  State<DocumentDetailContainer> createState() =>
      _DocumentDetailContainerState();
}

class _DocumentDetailContainerState extends State<DocumentDetailContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          InputBox(name: "PCR Card No.", inputType: TextInputType.name),
          InputBox(name: "PCR card Frontside", inputType: TextInputType.name),
          InputBox(name: "PCR card Backside", inputType: TextInputType.name),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.5) / 18,
          ),
          ButtonBox(buttonName: "Save Changes"),
        ],
      ),
    );
  }
}
