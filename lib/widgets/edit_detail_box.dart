import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/document_details.dart';
import 'package:flutter_application_3/screens/location_details.dart';
import 'package:flutter_application_3/screens/personal_details.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({super.key});

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  String _currentText = "Personl Details";

  static const Map<String, Widget> _pages = <String, Widget>{
    "Personl Details": PersonalDetailContainer(),
    "Location Details": LocationDetailContainer(),
    "Document Details": DocumentDetailContainer(),
  };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          CupertinoSegmentedControl(
            selectedColor: Colors.black,
            unselectedColor: Theme.of(context).scaffoldBackgroundColor,
            pressedColor: Theme.of(context).primaryColorDark,
            children: {
              "Personl Details": Container(
                color: _currentText == "Personl Details"
                    ? Theme.of(context).primaryColorLight
                    : Colors.grey[200],
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                child: Text("Personl Details"),
              ),
              "Location Details": Container(
                color: _currentText == "Location Details"
                    ? Theme.of(context).primaryColorLight
                    : Colors.grey[200],
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                child: Text("Location Details"),
              ),
              "Document Details": Container(
                color: _currentText == "Document Details"
                    ? Theme.of(context).primaryColorLight
                    : Colors.grey[200],
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                child: Text("Document Details"),
              ),
            },
            onValueChanged: (String value) {
              setState(() {
                _currentText = value;
              });
            },
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          Container(
            child: _pages[_currentText],
          )
        ],
      ),
    );
  }
}
