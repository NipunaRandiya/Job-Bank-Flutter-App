import 'package:flutter/material.dart';

class ButtonBox extends StatefulWidget {
  final String buttonName;
  final Function()? onPressed;
  const ButtonBox({super.key, required this.buttonName, this.onPressed});

  @override
  State<ButtonBox> createState() => _ButtonBoxState();
}

class _ButtonBoxState extends State<ButtonBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      width: (MediaQuery.of(context).size.width * 11) / 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFa330da),
      ),
      child: ElevatedButton(
          onPressed: widget.onPressed,
          child: Container(
              child: Text(widget.buttonName,
                  style: TextStyle(color: Color(0xFFfcf8fe), fontSize: 18)))),
    );
  }
}
