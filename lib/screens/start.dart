import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/login.dart';
import 'package:flutter_application_3/setting/language_config.dart';
import 'package:flutter_application_3/widgets/bottom_navbar.dart';
import 'package:flutter_application_3/widgets/button_box.dart';
import 'package:flutter_application_3/widgets/input_box.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final nameContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppBarTitles.getTitle("home"))),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 4,
          ),
          MaterialButton(
              child: Text("Start"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
              }),
          InputBox(
              controller: nameContoller,
              name: "name",
              inputType: TextInputType.name),
          InputBox(
              controller: nameContoller,
              name: "name",
              inputType: TextInputType.name),
          ButtonBox(
            buttonName: "hello",
          )
        ],
      )),
    );
  }
}
