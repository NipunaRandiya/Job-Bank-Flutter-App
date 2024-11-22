import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: (MediaQuery.of(context).size.width * 14) / 16,
            height: (MediaQuery.of(context).size.height * 10) / 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromARGB(255, 180, 50, 255))),
          ),
          Center(
            child: Image.asset(
              "assets/images/payment.png",
              width: (MediaQuery.of(context).size.width * 8) / 16,
              height: (MediaQuery.of(context).size.width * 8) / 16,
            ),
          )
        ],
      ),
    );
  }
}
