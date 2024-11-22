import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final TextEditingController? controller;
  final String name;
  final IconData? suffixIcon;
  final bool obsecureText;
  final TextInputType inputType;
  const InputBox(
      {super.key,
      this.controller,
      required this.name,
      this.suffixIcon,
      this.obsecureText = false,
      required this.inputType});

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: (MediaQuery.of(context).size.height * 0.25) / 18,
        /*left: (MediaQuery.of(context).size.width * 1) / 16,
          right: (MediaQuery.of(context).size.width * 1) / 16*/
      ),
      height: MediaQuery.of(context).size.height / 18,
      width: (MediaQuery.of(context).size.width * 11) / 16,
      child: TextField(
        controller: widget.controller,
        /*enabled: true,
        textCapitalization: widget.textCapitalization,
        maxLength: 25,*/
        maxLines: 1,
        obscureText: widget.obsecureText,
        keyboardType: widget.inputType,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(widget.suffixIcon),
          //isDense: true,
          labelText: widget.name,
          counterText: "",
          labelStyle: const TextStyle(
              color: Color.fromARGB(255, 126, 42, 222), fontSize: 16),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 126, 42, 222)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          /*focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 126, 42, 222)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 126, 42, 222)),
                borderRadius: BorderRadius.all(Radius.circular(10)))*/
        ),
      ),
    );
  }
}
