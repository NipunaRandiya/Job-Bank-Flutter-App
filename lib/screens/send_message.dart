import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/review_model.dart';
import 'package:flutter_application_3/samples/review_data.dart';
import 'package:flutter_application_3/widgets/review_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cusmoter Review"),
      ),
      body: ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            Review review = reviews[index];
            return ReviewCard(
                reviewer: review.senderName, review: review.review);
          }),
    );
  }
}
