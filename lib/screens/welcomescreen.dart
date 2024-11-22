import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Find Your Next Job Here',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Easily browse job listings, get personalized recommendations, and apply with just a few taps. Your next opportunity is waiting!',
                  style:
                      TextStyle(color: Colors.white, height: 1.4, fontSize: 18),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 147, 59, 255),
                        Color.fromARGB(255, 90, 18, 246)
                      ])),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                /*Align(
                  child: Text(
                    'type anything',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
