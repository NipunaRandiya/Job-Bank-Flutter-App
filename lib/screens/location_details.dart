import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/button_box.dart';
import 'package:flutter_application_3/widgets/input_box.dart';

class LocationDetailContainer extends StatefulWidget {
  const LocationDetailContainer({super.key});

  @override
  State<LocationDetailContainer> createState() =>
      _LocationDetailContainerState();
}

class _LocationDetailContainerState extends State<LocationDetailContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          InputBox(name: "Counter/Region", inputType: TextInputType.name),
          InputBox(name: "Street and number", inputType: TextInputType.name),
          InputBox(name: "Town/City", inputType: TextInputType.name),
          InputBox(name: "Country", inputType: TextInputType.name),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.5) / 18,
          ),
          ButtonBox(buttonName: "Save Changes")
        ],
      ),
    );
  }
}
