import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/register.dart';
import 'package:flutter_application_3/widgets/button_box.dart';
import 'package:flutter_application_3/widgets/input_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /*final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final pcrController = TextEditingController();*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: <Widget>[
            Positioned(
                top: (MediaQuery.of(context).size.height * 2.5) / 18,
                left: (MediaQuery.of(context).size.width * 3.5) / 16,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: (MediaQuery.of(context).size.height * 3.5) / 18,
                left: (MediaQuery.of(context).size.width * 6.5) / 16,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 18, color: Theme.of(context).primaryColor),
                )),
            Positioned(
              top: (MediaQuery.of(context).size.height * 4.25) / 18,
              left: (MediaQuery.of(context).size.width * 4) / 16,
              child: Image.asset(
                "assets/images/login.png",
                width: (MediaQuery.of(context).size.width * 8) / 16,
                height: (MediaQuery.of(context).size.width * 8) / 16,
              ),
            ),
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
                  InputBox(name: "User name", inputType: TextInputType.name),
                  InputBox(name: "Password", inputType: TextInputType.name),
                  InputBox(name: "PCR No.", inputType: TextInputType.name),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height * 1.25) / 18),
                  ButtonBox(
                    buttonName: "Sign In",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                  ),
                  SizedBox(
                      height: (MediaQuery.of(context).size.height * 0.25) / 18),
                  Row(
                    children: <Widget>[
                      const Text(
                        "Forget Your Password?",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          width:
                              (MediaQuery.of(context).size.width * 0.25) / 16),
                      const Text(
                        "Or Register",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
