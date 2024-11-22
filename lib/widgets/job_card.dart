import 'package:flutter/material.dart';

class JobCard extends StatefulWidget {
  final String image_name;
  final String brife_description;
  final String job_tag;
  final String time;
  final String payment;
  final String payment_type;

  const JobCard({
    super.key,
    required this.image_name,
    required this.brife_description,
    required this.job_tag,
    required this.time,
    required this.payment,
    required this.payment_type,
  });

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: (MediaQuery.of(context).size.height * 4) / 18,
          width: (MediaQuery.of(context).size.width * 14) / 16,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color.fromARGB(255, 220, 163, 251),
            ),
            /*boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 241, 216, 255)
                    .withOpacity(0.6), // Shadow color
                blurRadius: 15, // Soft shadow blur
                spreadRadius: 5, // Distance of shadow from container
                offset: Offset(0, 0), // Shadow position
              ),
            ],*/
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        widget.image_name,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width * 0.5) / 16,
                  ),
                  Expanded(
                    child: Text(
                      widget.brife_description,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height * 0.25) / 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "Posted in",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width * 0.1) / 16,
                        ),
                        Text(
                          widget.job_tag,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width * 0.1) / 16,
                    ),
                    Text(
                      "${widget.time} ago",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.payment,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 255, 32, 84)),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width * 0.1) / 16,
                        ),
                        Text(
                          widget.payment_type,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height * 0.75) / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Theme.of(context).primaryColor),
                      child: MaterialButton(
                        //minWidth: double.infinity,
                        child: Text(
                          'Apply',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
