import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/edit_detail_box.dart';
import 'package:flutter_application_3/widgets/user_card.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          children: <Widget>[
            UserCard(username: "M. D. S. Sanath Perera", userID: "2021JB"),
            EditDetails(),
          ],
        ),
      ),
    );
  }
}
