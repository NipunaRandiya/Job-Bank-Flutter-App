import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/bottom_navbar.dart';
import 'package:flutter_application_3/widgets/button_box.dart';
import 'package:flutter_application_3/widgets/input_box.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: <Widget>[
            Positioned(
                top: (MediaQuery.of(context).size.height * 2.5) / 18,
                left: (MediaQuery.of(context).size.width * 3.75) / 16,
                child: Text(
                  "User Register",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: (MediaQuery.of(context).size.height * 3.5) / 18,
                left: (MediaQuery.of(context).size.width * 3.5) / 16,
                child: Text(
                  "Add your Personal Details",
                  style: TextStyle(
                      fontSize: 18, color: Theme.of(context).primaryColor),
                )),
            Positioned(
              top: (MediaQuery.of(context).size.height * 4.25) / 18,
              left: (MediaQuery.of(context).size.width * 4) / 16,
              child: Image.asset(
                "assets/images/register.png",
                width: (MediaQuery.of(context).size.width * 7.5) / 16,
                height: (MediaQuery.of(context).size.width * 7.5) / 16,
              ),
            ),
            Positioned(
                top: (MediaQuery.of(context).size.height * 8) / 18,
                left: (MediaQuery.of(context).size.width * 13) / 16,
                child: Text(
                  "3/1",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: (MediaQuery.of(context).size.height * 8.65) / 18,
                left: (MediaQuery.of(context).size.width * 1.5) / 16,
                child: Stack(
                  children: <Widget>[
                    Container(
                        height:
                            (MediaQuery.of(context).size.height * 0.10) / 18,
                        width: (MediaQuery.of(context).size.width * 13) / 16,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 204, 203, 203),
                          borderRadius: BorderRadius.circular(5),
                        )),
                    Container(
                        height:
                            (MediaQuery.of(context).size.height * 0.10) / 18,
                        width: (MediaQuery.of(context).size.width * 13) / 48,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ],
                )),
            Positioned(
                top: (MediaQuery.of(context).size.height * 9) / 18,
                left: (MediaQuery.of(context).size.width * 1.5) / 16,
                child: Container(
                  height: (MediaQuery.of(context).size.height * 8) / 18,
                  width: (MediaQuery.of(context).size.width * 13) / 16,
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2)),
                )),
            Positioned(
              top: (MediaQuery.of(context).size.height * 9.5) / 18,
              left: (MediaQuery.of(context).size.width * 2.5) / 16,
              child: Column(
                children: <Widget>[
                  InputBox(name: "First Name", inputType: TextInputType.name),
                  InputBox(name: "Last Name", inputType: TextInputType.name),
                  InputBox(name: "Username", inputType: TextInputType.name),
                  InputBox(name: "Password", inputType: TextInputType.name),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height * 0.5) / 18),
                  ButtonBox(
                    buttonName: "Next Step",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBar()));
                    },
                  ),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height * 0.25) / 18),
                ],
              ),
            ),
          ],
        ));
  }
}
