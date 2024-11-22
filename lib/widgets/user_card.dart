import 'dart:ui';

import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  final String? image;
  final String username;
  final String userID;
  const UserCard(
      {super.key, this.image, required this.username, required this.userID});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFa330da),
      ),
      margin: EdgeInsets.only(
        top: (MediaQuery.of(context).size.height * 0.75) / 18,
        bottom: (MediaQuery.of(context).size.height * 0.25) / 18,
        left: (MediaQuery.of(context).size.width * 0.5) / 16,
        right: (MediaQuery.of(context).size.width * 0.5) / 16,
      ),
      height: (MediaQuery.of(context).size.height * 7) / 18,
      width: (MediaQuery.of(context).size.width * 15) / 16,
      child: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          Text(
            "User Profile",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.5) / 18,
          ),
          Stack(
            children: <Widget>[
              Positioned(
                child: Material(
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/images/propic.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height * 1.85) / 18,
                left: (MediaQuery.of(context).size.width * 2.90) / 16,
                child: IconButton(
                    onPressed: () {
                      /*Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));*/
                    },
                    icon: Icon(
                      Icons.add_a_photo_rounded,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          Text(
            widget.username,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
            "User Id - ${widget.userID}",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.25) / 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    /*Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));*/
                  },
                  icon: Icon(
                    Icons.facebook,
                    size: 30,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    /*Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));*/
                  },
                  icon: Icon(
                    Icons.tiktok,
                    size: 30,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    /*Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));*/
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      )
          /*Stack(
          children: <Widget>[
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
            Positioned(
                top: (MediaQuery.of(context).size.height) / 18,
                left: (MediaQuery.of(context).size.width) / 16,
                child: child),
          ],
        ),*/
          ),
    );
  }
}
