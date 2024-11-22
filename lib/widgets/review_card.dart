import 'package:flutter/material.dart';

class ReviewCard extends StatefulWidget {
  final String reviewer;
  final String review;
  const ReviewCard({super.key, required this.reviewer, required this.review});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.reviewer,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width * 14) / 16,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromARGB(255, 202, 79, 255))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(child: Text(widget.review)),
            ),
          )
        ],
      ),
    );
  }
}
