import 'package:flutter/material.dart';
import 'package:flutter_application_3/samples/job_data.dart';
import 'package:flutter_application_3/models/job_model.dart';
import 'package:flutter_application_3/widgets/job_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "assets/images/logo.png",
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Row(
          children: <Widget>[
            Text(
              "Welcome",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              "  to",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            Text(
              "  Job Bank",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // Height of the bottom section
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Align buttons evenly
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: (MediaQuery.of(context).size.width * 12) / 16,
                    height: (MediaQuery.of(context).size.height * 1) / 18,
                    child: SearchBar(
                      hintText: "Search Job",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform action for Button 3
                    print('Button 3 pressed');
                  },
                  style: ButtonStyle(),
                  child: Icon(
                    Icons.filter_list_alt,
                    color: Color.fromARGB(255, 206, 22, 247),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: jobList.length,
        itemBuilder: (context, index) {
          Job job = jobList[index];
          return JobCard(
              image_name: job.imagename,
              brife_description: job.brifeDescription,
              job_tag: job.jobTag,
              time: job.time,
              payment: job.payment,
              payment_type: job.paymentType);
        },
      ),
    );
  }
}
